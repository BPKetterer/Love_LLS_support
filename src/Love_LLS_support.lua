local love_api = require("love-api.love_api")

---a lookup for different type aliases
---@type string[]
local type_aliasas = {
    ["light userdata"]  = "lightuserdata",
    Variant = "love.Variant",
    tables = "table",
    strings = "string",
    RenderTargetSetup = "Canvas"
}

---@alias class_queue_item {obj: table, full_name: string, is_class: boolean}
---@alias enum_queue_item {obj: table, full_name: string}
---@alias function_queue_item {obj: table, full_name: string}
---@alias callback_queue_item {obj: table, full_name: string}

---@type class_queue_item[]
local class_queue = {}

---@type enum_queue_item[]
local enum_queue = {}

---@type function_queue_item[]
local function_queue = {}

---@type callback_queue_item[]
local callback_queue = {}

---gets the alias of a type
---@param type_name  string
---@return string
local function get_type_alias(type_name)
    while type_aliasas[type_name] do
        type_name = type_aliasas[type_name]
    end
    return type_name
end

---splits a string
---@param str string
---@param delimiter string
---@return string[]
local function split_str(str, delimiter)
    local result = {}
    for match in (str .. delimiter):gmatch("(.-)" .. delimiter) do
        table.insert(result, match)
    end
    return result
end

---checks if a string contains a substring
---@param str string
---@param substring string
---@return boolean
local function str_contains(str, substring)
    return string.find(str, substring, 1, true) ~= nil
end

---formats an arguments description
---@param description string
---@return string
local function format_arg_desc(description, default)
    if not (description or default) then
        return ""
    end
    description = description or ""
    if default then
        description = "(" .. default .. ") " .. description
    end
    description , _ = string.gsub(description, "\n", "")
    return "# " .. description
end

---formats a header desciption
---@param description? string
---@param wiki_name? string
---@return string
local function format_head_desc(description, wiki_name)
    description = description or ""
    description , _ = string.gsub(description, "\n", "\n---")
    if wiki_name then
        description = description .. "\n---\n---[Wiki](https://love2d.org/wiki/" .. wiki_name ..")\n---"
    end
    return "---" .. description
end

---converts an argument into a lls string
---@param arg table
---@return string
local function serialize_arg_type(arg)
    local arg_type = arg.type
    if str_contains(arg.type, " or ") or str_contains(arg.type, " and ") then
        local old_arg_type = arg.type
        local splitter = (str_contains(arg.type, " or ") and " or ") or " and "
        local arg_types = {}
        for _, at in ipairs(split_str(arg.type, splitter)) do
            arg.type = at
            table.insert(arg_types, serialize_arg_type(arg))
        end
        arg_type = table.concat(arg_types, "|")
        arg.type = old_arg_type
    elseif arg.signature then
        assert(not arg.tablearray)
        assert(not arg.table)
        assert(not arg.arraytype)
        arg_type = "fun("
        local fun_args = {}
        for _, arg2 in ipairs(arg.signature.arguments or {}) do
            table.insert(fun_args, arg2.name ..":" .. serialize_arg_type(arg2))
        end
        arg_type = arg_type .. table.concat(fun_args, ", ") .. ")"
        if arg.signature.returns then
            local fun_returns = {}
            for _, re in ipairs(arg.signature.returns or {}) do
                table.insert(fun_returns, re.name ..": " .. serialize_arg_type(re))
            end
            arg_type = arg_type .. ":" .. table.concat(fun_returns, ", ")
        end
    elseif arg.table then
        assert(not arg.signature)
        assert(not arg.arraytype)
        local table_content = {}
        for _, v in ipairs(arg.table) do
            local v_name = v.name
            if v_name:match("^[%d]") then
                v_name = "[" .. v_name .. "]"
            elseif v_name == "..." then
                v_name = "['...']"
            end
            table.insert(table_content, "\n---" .. v_name .. " : " .. serialize_arg_type(v))
        end
        arg_type =  "{" .. table.concat(table_content, ",") .. "}"
    elseif type_aliasas[arg_type] then
        arg_type = get_type_alias(arg_type)
    end

    if arg.arraytype or arg.tablearray then
        arg_type = arg_type .. "[]"
    end

    assert(arg.signature or arg.table or (not str_contains(arg_type, " ")), arg_type)
    return arg_type
end

---prints a class
---@param f file*
---@param data class_queue_item
local function print_class(f, data)
    local obj = data.obj
    local full_name = data.full_name
    local is_class = data.is_class

    if obj.version then
        f:write("---Version: " .. obj.version .. "\n")
    end
    
    local wiki_name = (is_class and obj.name) or full_name
    f:write(format_head_desc(obj.description, wiki_name) .. "\n")

    f:write("---@class " .. full_name)
    if obj.supertypes then
        local parents = {}
        for _, parent in ipairs(obj.supertypes) do
            table.insert(parents, get_type_alias(parent))
        end
        f:write(" : " .. table.concat(parents, ", "))
    end
    f:write("\n")

    for _, v in ipairs(obj.modules or {}) do
        f:write("---@field " .. v.name .. " " .. get_type_alias(v.name) .. "\n")
    end

    if is_class then
        f:write("local " .. obj.name .. " = {}\n")
    else
        f:write(full_name .. " = {}\n")
    end
    f:write("\n")
end

---prints an enum
---@param f file*
---@param data enum_queue_item
local function print_enum(f, data)
    local full_name = data.full_name
    local obj = data.obj
    if obj.description then
        f:write(format_head_desc(obj.description, obj.name) .. "\n")
    end
    f:write("---@alias " .. full_name )
    f:write("\n")
    for _, con in ipairs(obj.constants) do
        if con.description then
            f:write(format_head_desc(con.description) .. "\n" .. "---|\"" .. con.name .. "\"\n")
        else
            f:write("---|\"" .. con.name .. "\"\n")
        end
    end
    f:write("\n")
end

---prints a variant of a function
---@param f file*
---@param variant table
---@param full_name string
---@param header string
local function print_variant(f, variant, full_name, header)
    f:write(header)
    local raw_args = {}
    for _, arg in ipairs(variant.arguments or {}) do
        local arg_names, _ = string.gsub(arg.name, "'", "")
        table.insert(raw_args, arg_names)
        for _, arg_name in ipairs(split_str(arg_names, ", ")) do
            if arg.default then
                arg_name = arg_name .. "?"
            end
            f:write("---@param " .. arg_name .. " " .. serialize_arg_type(arg) .. format_arg_desc(arg.description, arg.default) .. "\n")
        end
    end
    for _, re in ipairs(variant.returns or {}) do
        local re_names, _ = string.gsub(re.name, "'", "")
        for _, re_name in ipairs(split_str(re_names, ", ")) do
            f:write("---@return " .. serialize_arg_type(re) .. " " .. re_name .. format_arg_desc(re.description) .. "\n")
        end
    end
    f:write("---@diagnostic disable-next-line: args-after-dots\nfunction " .. full_name .. "(" .. table.concat(raw_args, ", ") .. ") end\n\n")
end

---prints a function
---@param f file*
---@param data function_queue_item
local function print_function(f, data)
    local obj =  data.obj
    local full_name = data.full_name
    local header = ""
    if obj.description then
        header = format_head_desc(obj.description, full_name) .. "\n"
    end
    for _, variant in ipairs(obj.variants) do
        print_variant(f, variant, full_name, header)
    end
end

---prints a callback
---@param f file*
---@param data callback_queue_item
local function print_callback(f, data)
    local obj =  data.obj
    local full_name = data.full_name
    local variant_strs = {}
    for _, variant in ipairs(obj.variants) do
        local arg_strs = {}
        local return_strs = {}
        for _, arg in ipairs(variant.arguments or {}) do
            table.insert(arg_strs, arg.name .. ": " .. serialize_arg_type(arg))    
        end
        for _, re in ipairs(variant.returns or {}) do
            if re.type == "function" then
                table.insert(return_strs, "fun()")
            else
                table.insert(return_strs, serialize_arg_type(re))
            end 
        end
        local variant_str = "fun(" .. table.concat(arg_strs, ", ") .. ")"
        if variant.returns then
            variant_str = variant_str .. ":" .. table.concat(return_strs, ", ")
        end
        table.insert(variant_strs, variant_str)
    end
    f:write(format_head_desc(obj.description, full_name) .. "\n")
    f:write("---@alias " .. full_name .. " ")
    f:write(table.concat(variant_strs, "|"), "\n\n")
end

---prints all element from a queue
---@generic item: class_queue_item|function_queue_item|callback_queue_item|enum_queue_item
---@param queue item[]
---@param fun fun(file*, item)
---@param f file*
local function print_queue(queue, fun, f)
    for _, item in ipairs(queue) do
        fun(f, item)
    end
end

---prints the docu
---@param f file*
local function print_all(f)
    f:write("---@meta\n")
    f:write("--Autogenerated\n")
    f:write("\n")
    f:write("assert(false, \"This file is only for LuaLS and should not be included\")\n")
    f:write("\n")
    f:write("---@alias cdata table\n")
    f:write("\n")
    f:write("---@alias love.Variant table|boolean|string|number|" .. get_type_alias("Object") .. "\n")
    f:write("\n")
    print_queue(class_queue, print_class, f)
    print_queue(callback_queue, print_callback, f)
    print_queue(enum_queue, print_enum, f)
    print_queue(function_queue, print_function, f)
end

---collects the data of the module/type
---@param obj table
---@param path? string
---@param is_class? boolean
local function collect(obj, path, is_class)
    local full_name = "love"
    if is_class then
        full_name = "love." .. obj.name    
    elseif path then
        full_name = path .. "." .. obj.name
    end
    --adds the module to the alias lookup
    if obj.name then
        type_aliasas[obj.name] = full_name
    end
    --adds the module/type to the print queue
    table.insert(class_queue, {obj = obj, full_name = full_name, is_class = is_class})
    --search for children
    for _, module in ipairs(obj.modules or {}) do
        collect(module, full_name, false)
    end
    for _, type in ipairs(obj.types or {}) do
        collect(type, full_name, true)
    end
    for _, enum in ipairs(obj.enums or {}) do
        local full_enum_name = "love." .. enum.name
        type_aliasas[enum.name] = full_enum_name
        table.insert(enum_queue, {obj = enum, full_name = full_enum_name})
    end
    for _, callback in ipairs(obj.callbacks or {}) do
        table.insert(callback_queue, {obj = callback, full_name = full_name .. "." .. callback.name})
    end
    local fun_name_prefix = ((
            is_class and (obj.name .. ":"))
            or full_name .. ".")
    for _, fun in ipairs(obj.functions or {}) do
        table.insert(function_queue, {obj = fun, full_name = fun_name_prefix .. fun.name})
    end
end

---creates a lls documentation
---@param file_path string: the destination
return function(file_path)
    local file = io.open(file_path, "w")
    assert(file)
    file:write("")
    file:close()
    file = io.open(file_path, "a")
    assert(file)

    collect(love_api)
    print_all(file)

    file:close()
end