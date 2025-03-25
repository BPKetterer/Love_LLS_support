local love_api = require("Love_LLS_support.love-api-master.love_api")

---@alias detail_level # some text
---| "full" # prints all descriptions
---| "reduced" # prints only parameter names
---| "minimal" # prints only parameter types

local type_aliasas = {
    ["light userdata"]  = "lightuserdata",
    Variant = "love.Variant",
    tables = "table",
    strings = "string"
}

local function human_table(t, indent)
    indent = indent or 0
    local s = ""
    local had_first = false
    local indent_str = string.rep("    ", indent)
    for k, v in pairs(t) do
        if had_first then
            s = s .. ",\n"
        end
        had_first = true
        if type(v) == "string" then
            v , _ = string.gsub(v, "\n", "%\n")
        end
        if type(v) == "table" then
            s = s .. indent_str .. k .. " = {\n" .. indent_str .. human_table(v, indent + 1) .. "\n" .. indent_str .. "}"
        else
            s = s .. indent_str .. k .. " = " .. tostring(v)
        end
    end
    return s
end

local class_queue = {}
local enum_queue = {}
local function_queue = {}
local table_args_queue = {}

local fields = {} --todo remove

local function split_str(str, delimiter)
    local result = {}
    for match in (str .. delimiter):gmatch("(.-)" .. delimiter) do
        table.insert(result, match)
    end
    return result
end

local function str_contains(str, substring)
    return string.find(str, substring, 1, true) ~= nil
end

---formats description
---@param description string
---@return string
local function format_description(description)
    --description, _ = string.gsub(description, "\n\n", "\n")
    --description, _ = string.gsub(description, "\n", "\n---")
    description , _ = string.gsub(description, "\n", "")
    return description
end

local function temp_name(full_name)
    local name , _ = string.gsub(full_name, "%.", "_")
    return "temp__" .. name
end

local function serialize_arg_type(arg)
    local arg_type = arg.type
    if arg_type == "..." then
        return "%[...%]"
    end
    if str_contains(arg.type, " or ") or str_contains(arg.type, " and ") then
        local old_arg_type = arg.type
        local splitter = (str_contains(arg.type, " or ") and " or ") or " and "
        arg_type = ""
        local not_first = false
        for _, at in pairs(split_str(arg.type, splitter)) do
            if not_first then
                arg_type = arg_type .. "|"
            end
            not_first = true
            arg.type = at
            arg_type = arg_type .. serialize_arg_type(arg)
        end
        arg.type = old_arg_type
        return arg_type
    end
    if type_aliasas[arg_type] then
        arg_type = type_aliasas[arg_type]
    end
    if arg.arraytype then
        arg_type = arg_type .. "[]"
    elseif arg.signature then
        assert(not arg.tablearray)
        assert(not arg.table)
        assert(not arg.arraytype)
        arg_type = "fun("
        local not_first = false
        for _, arg2 in pairs(arg.signature.arguments or {}) do
            if not_first then
                arg_type = arg_type .. ", "
            end
            not_first = true
            arg_type = arg_type .. arg2.name ..":" .. serialize_arg_type(arg2)
        end
        arg_type = arg_type .. ")"
        not_first = false
        for _, re in pairs(arg.signature.returns or {}) do
            if not_first then
                arg_type = arg_type .. ", "
            else
                arg_type = arg_type .. ": "
            end
            not_first = true
            arg_type = arg_type .. re.name ..":" .. serialize_arg_type(re)
        end
    elseif arg.table then
        assert(not arg.signature)
        assert(not arg.arraytype)
        arg_type = "{"
        local not_first = false
        for _, v in pairs(arg.table) do
            if not_first then
                arg_type = arg_type .. ","
            end
            not_first = true
            local v_name = v.name
            if v_name:match("^[%d%.]") then
                v_name = "[" .. v_name .. "]"
            end
            arg_type = arg_type .. "\n---" .. v_name .. " : " .. serialize_arg_type(v)
        end
        arg_type = arg_type .. "}"
        if arg.tablearray then
            arg_type = arg_type .. "[]"
        end
    end
    if arg.default then
        arg_type = arg_type .. "|nil"
    end
    assert(arg.signature or arg.table or (not str_contains(arg_type, " ")), arg_type)
    return arg_type
end

---prints a class
---@param f file*
---@param detail_level detail_level
---@param data table
local function print_class(f, detail_level, data)
    local full_name = data.full_name
    local temp_name = data.temp_name
    local obj = data.obj
    if obj.version then
        f:write("---@version " .. obj.version .. "\n")
    end
    if obj.description and detail_level == "full" then
        f:write("---" .. format_description(obj.description) .. "\n")
    end
    f:write("---@class " .. full_name)
    local has_parent = false
    if obj.supertypes then
        for _, parent in pairs(obj.supertypes) do
            if has_parent then
                f:write(", ")
            else
                has_parent = true
                f:write(" : ")
            end
            f:write(type_aliasas[parent])
        end
    end
    f:write("\n")
    if obj.modules then
        for _, v in pairs(obj.modules) do
            f:write("---@field " .. v.name .. " " .. type_aliasas[v.name] .. "\n")
        end
    end
    f:write("local " .. temp_name .. " = {}\n")
    f:write("\n")
end

---prints an enum
---@param f file*
---@param detail_level detail_level
---@param data table
local function print_enum(f, detail_level, data)
    local full_name = data.full_name
    local obj = data.obj
    f:write("---@alias " .. full_name )
    if obj.description and detail_level == "full" then
        f:write(" #" .. format_description(obj.description))
    end
    f:write("\n")
    for _, con in pairs(obj.constants) do
        if con.description and detail_level ~= "minimal" then
            f:write("---|\"" .. con.name .. "\" # " .. format_description(con.description) .. "\n")
        else
            f:write("---|\"" .. con.name .. "\"\n")
        end
    end
    f:write("\n")
end

local function print_variant(f, detail_level, variant, full_name, temp_owner_name, name, header, takes_self)
    f:write(header)
    local raw_args = ""
    local has_arg = false
    if variant.arguments then
        for _, arg in pairs(variant.arguments) do
            local arg_name, _ = string.gsub(arg.name, "'", "")
            if has_arg then
                raw_args = raw_args .. ", "
            end
            has_arg = true
            raw_args = raw_args .. arg_name

            local arg_type = serialize_arg_type(arg)

            local arg_default = ""
            if arg.default then
                arg_default = " (" .. arg.default .. ")"
            end

            local arg_desciption = ""
            if arg.description then
                arg_desciption = " " .. format_description(arg.description)
            end

            local suffix = ""
            if arg.default or arg.description then
                suffix = "#" .. arg_default .. arg_desciption
            end

            for _, arg_name in pairs(split_str(arg_name, ", ")) do
                assert(not str_contains(arg_name, " "))
                assert(not str_contains(arg_name, "\n"))
                assert(not str_contains(suffix, "\n"))
                f:write("---@param " .. arg_name .. " " .. arg_type .. suffix .. "\n")
            end
        end
    end

    f:write("---@diagnostic disable-next-line: args-after-dots, duplicate-set-field\nfunction " .. temp_owner_name .. (takes_self and ":" or ".") .. name .. "(" .. raw_args .. ") end\n\n")
end

---prints a function
---@param f file*
---@param detail_level detail_level
---@param data table
local function print_function(f, detail_level, data)
    local obj =  data.obj
    local temp_owner_name = data.temp_owner_name
    local takes_self = data.takes_self
    local name = obj.name
    local full_name = data.full_name
    local header = ""
    if obj.description and detail_level == "full" then
        header = "---" .. format_description(obj.description) .. "\n"
    end
    
    for _, variant in pairs(obj.variants) do
        print_variant(f, detail_level, variant, full_name, temp_owner_name, name, header, takes_self)
    end
end

---prints all element from a queue
---@param queue table
---@param fun fun(file*, table, string, detail_level)
---@param f file*
---@param detail_level detail_level
local function print_queue(queue, fun, f, detail_level)
    for _, item in pairs(queue) do
        fun(f, detail_level, item)
    end
end

---prints the docu
---@param f file*
---@param detail_level detail_level
local function print_all(f, detail_level)
    f:write("---@alias love.Variant table|boolean|string|number|" .. type_aliasas["Object"] .. "\n")
    f:write("\n")
    print_queue(class_queue, print_class, f, detail_level)
    print_queue(enum_queue, print_enum, f, detail_level)
    print_queue(function_queue, print_function, f, detail_level)
    f:write("---@type loveModule.love\n")
    f:write("love = love\n")
end

---collects the data of the module/type
---@param obj table
---@param path string|nil
---@param is_class boolean|nil
local function collect(obj, path, is_class)
    if path then
        assert(obj.name)
        path = path .. "." .. obj.name
    else
        path = "love"
    end
    --gets the full name of the module/type
    local full_name = path
    if not is_class then
        full_name = "loveModule." .. full_name
    end
    --generates the temp name
    local temp_name = temp_name(full_name)
    --adds the module to the alias lookup
    if obj.name then
        type_aliasas[obj.name] = full_name
    end
    --adds the module/type to the print queue
    table.insert(class_queue, {full_name = full_name, temp_name = temp_name, obj = obj})
    --search for children
    for k, v in pairs(obj) do
        if k == "modules" then
            --recursivly collects modules
            for _, module in pairs(v) do
                collect(module, path, false)
            end
        elseif k == "types" then
            --recursivly collects types
            for _, type in pairs(v) do
                collect(type, path, true)
            end
        elseif k == "enums" then
            ---@todo
            for _, enum in pairs(v) do
                local enum_full_name = full_name .. "." .. enum.name
                type_aliasas[enum.name] = enum_full_name
                table.insert(enum_queue, {full_name = enum_full_name, obj = enum})
            end
        elseif k == "functions" or k == "callbacks" then
            --collects functions/callbacks
            for _, fun in pairs(v) do
                table.insert(function_queue, {temp_owner_name = temp_name, obj = fun, full_name = path .. fun.name, takes_self = is_class})
            end
        elseif k == "name" or k == "version" or k == "supertypes" or k == "description" or k == "constructors" then
        else
            assert(false, "unknown field in collect " .. k)
        end
    end
end

---creates a lls documentation
---@param file_path string: the destination
---@param detail_level detail_level
return function(file_path, detail_level)
    local file = io.open(file_path, "w")
    assert(file)
    file:write("--Autogenerated\n\n")
    file:close()
    file = io.open(file_path, "a")
    assert(file)

    collect(love_api)
    if not type_aliasas["RenderTargetSetup"] then
        type_aliasas["RenderTargetSetup"] = type_aliasas["Canvas"]
    end
    print_all(file, detail_level)

    for k, _ in pairs(fields) do
        file:write(k .. "\n")
    end
    file:close()
end