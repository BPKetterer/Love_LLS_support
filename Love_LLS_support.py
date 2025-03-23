import requests
from bs4 import BeautifulSoup
from collections import deque
import time
from tqdm import tqdm
import os

module_queue = deque()
funciton_queue = deque()
type_queue = deque()
callback_queue = deque()
enum_queue = deque()

progress_bar = None

type_map = dict()

callback_section_aliases = ["General", "Window", "Keyboard", "Mouse", "Joystick", "Touch"]
function_section_aliases = ["Drawing", "Object_Creation", "Graphics_State", "Coordinate_System", "Window", "System_Information"]
skipable_sections = ["Other Languages", "See Also", "Notes"]

#gets the content of the url
def fetch(url):
    time.sleep(0.3)
    try:
        response = requests.get(url, timeout=5)
        response.raise_for_status()
        return str(response.text)
    except requests.exceptions.RequestException as e:
        print(f"Error: {e}")
        raise

def get_link(page):
    return "https://love2d.org/wiki/" + page

def get_soup(page):
    chache_location = "cache/" + page.replace(":", "__") + ".html"
    content = ""
    if os.path.exists(chache_location):
        with open(chache_location, "r", encoding="utf-8", errors="replace") as f:
            content = f.read()
    else:
        content = fetch(get_link(page))
        with open(chache_location, "w", encoding="utf-8", errors="replace") as f:
            f.write(content)
    return BeautifulSoup(content, 'html.parser')

def out(line="", end="\n"):
    global file
    file.write(line + end)

def out_header(name):
    header = "-- " + name + " --"
    length = len(header)
    out("-" * length)
    out(header)
    out("-" * length)
    out()

def out_link(page):
    out("--- " + get_link(page))

def handle_module(name):
    global skipable_sections, function_section_aliases, callback_section_aliases
    out_link(name)
    out("---@alias " + name + " {", end="")
    soup = get_soup(name)
    sections = []
    if soup.find("div", id="toc"):
        for section in soup.find("div", id="toc").find_all("li"):
            sections.append(section.find("a").get("href")[1:])
    else:
        sections = [soup.find(class_="mw-headline").text]
    for section in sections:
        is_callback = False
        is_function = False
        if section in skipable_sections:
            continue
        elif section == "Third-party_modules":
            print("INFO skipping Third-party_modules")
            continue
        elif name == "love" and section in callback_section_aliases:
            is_callback = True
        elif section in function_section_aliases:
            is_function = True
        for item_row in soup.find(id=section).parent.find_next_sibling().find_all("tr"):
            item = item_row.find("a").text
            if item == "Config Files":
                print("INFO skipping Config Files in love module")
                continue
            
            if section in ["Types", "Enums"]:
                if item in type_map:
                    print("WARNING " + name + " referenced multiple times")
                    continue
                else:
                    type_map[item] = name + "." + item
            else:
                out("\n--- " + item.removeprefix(name + ".") + " : " + item + ",", end="")                

            if section == "Modules":
                module_queue.append(item)
            elif is_function or section == "Functions":
                funciton_queue.append(item)
            elif section == "Types":
                type_queue.append(item)
            elif section == "Enums":
                enum_queue.append(item)
            elif is_callback:
                callback_queue.append(item)
            else:
                print("ERROR unknown section type: " + section)
    out("}\n")

def handle_type(name):
    global skipable_sections
    out_link(name)
    full_name = type_map[name]
    line = "---@class " + full_name
    soup = get_soup(name)
    supertypes = soup.find(id="Supertypes")
    if supertypes:
        has_supertype = False
        for supertype in supertypes.parent.find_next_sibling().find_all("li"):
            if has_supertype:
                line += ", "
            else:
                line += ": "
            has_supertype = True
            line += type_map[supertype.text]
    out(line)
    sections = []
    for section in soup.find("div", id="toc").find_all("li"):
            sections.append(section.find("a").get("href")[1:])
    for section in sections:
        if section in skipable_sections:
            continue
        elif section in ["Subtypes", "Enums"]:
            for item_row in soup.find(id=section).parent.find_next_sibling().find_all("tr"):
                item = item_row.find("a").text
                if item not in type_map:
                    type_map[item] = full_name.removesuffix(name) + item
                    if section == "Subtypes":
                        type_queue.append(item)
                    elif section == "Enums":
                        enum_queue.append(item)
            continue
        for item_row in soup.find(id=section).parent.find_next_sibling().find_all("tr"):
            item = item_row.find("a").text
            if not item.startswith(name + ":"):
                continue
            field_name = item.removeprefix(name + ":")
            out("---@field " + field_name + " " + full_name + "." + field_name + ",")
            if section == "Functions":
                funciton_queue.append(item)
            else:
                print("ERROR unknown section type: " + section)
    out()

def handle_function(name):
    out_link(name)
    soup = get_soup(name)
    if ":" in name:
        split_name = name.split(":")
        name = type_map[split_name[0]] + "." + split_name[1]
    out("---@alias " + name.replace(":", "."))
    signature_id = 1
    argument = soup.find(id="Arguments")
    returns = soup.find(id="Returns")
    while argument:
        line = "---| fun("
        has_argument = False
        for raw_param in argument.parent.find_next_sibling().find_all("dt"):
            #get the parameter type
            param = raw_param.text
            param = param.replace("tables and strings", "table|string")
            param = param.replace("light userdata", "light_userdata")
            param = param.replace("or LÖVE userdata", "table")
            param = list(filter(lambda s: s != "", param.split(" ")))
            param_type = param[0]
            first_param_name_id = 1
            while param_type[-1] == ",":
                param_type += param[first_param_name_id]
                first_param_name_id += 1
            param_type = param_type.replace(",", "|").replace(" ", "")

            if param_type in type_map:
                param_type = type_map[param_type]
            if param[len(param) - 1][-1] != ",":
                param_type += "|nil"
            
            param_name_id = first_param_name_id
            while param_name_id == first_param_name_id or param[param_name_id - 1][-1] == ",":
                if has_argument:
                    line += ", "
                has_argument = True
                param_name = param[param_name_id].removesuffix(",").replace("\"", "")
                param_name = param_name.replace("[", "").replace("]", "")
                if param_name[0].isdigit():
                    param_name = "_" + param_name
                line += param_name + ": " + param_type
                param_name_id += 1
        line += "): "
        has_return = False
        if returns:
            for re in returns.parent.find_next_sibling().find_all("dt"):
                re = re.text
                re = re.replace("light userdata", "light_userdata")
                re = re.split(" ")[0]
                if has_return:
                    line += ", "
                has_return = True
                if re in type_map:
                    re = type_map[re]
                line += re
        else:
            print("WARNING " + name + " has not a return type for signature " + str(signature_id))
        if not has_return:
            line += "nil"
        out(line)
        signature_id += 1
        argument = soup.find(id="Arguments_" + str(signature_id))
        returns = soup.find(id="Returns_" + str(signature_id))
    out()

def handle_callback(name):
    out("---CALLBACK")
    handle_function(name)

def handle_enum(name):
    out_link(name)
    out("---@alias " + type_map[name])
    soup = get_soup(name)
    if name in ["PixelFormat", "KeyConstant"]:
        found_first = False
        for row in soup.find(id="Constants").parent.parent.find_all("tr"):
            value = row.find("td")
            if value:
                found_first = found_first or value.text in ["normal\n", "a\n"]
                if found_first:
                    out("---| \"" + value.text.removesuffix("\n") + "\"")
    else:
        for value in soup.find(id="Constants").parent.parent.find_all("dt"):
            out("---| \"" + value.text + "\"")
    out()

def exhaust_queue(queue, fun):
    global progress_bar
    while queue:
        fun(queue.popleft())
        if progress_bar:
            progress_bar.update(1)

def type_catcher(dict):
    for k, v in dict.items():
        if k not in type_map:
            if v in type_map:
                type_map[k] = type_map[v]
            else:
                type_map[k] = v

def main():
    global file, module_queue, type_queue, enum_queue, funciton_queue, callback_queue, progress_bar
    module_queue.append("love")
    print("collecting sites...")
    with open("Love_LLS_support.lua", "w") as f:
        f.write("") #wipes the file
    with open("Love_LLS_support.lua", "a", encoding="utf-8", errors="replace") as f:
        file = f
        with open("header.txt", "r") as header:
            out(header.read())
        
        out_header("MODULES")
        exhaust_queue(module_queue, handle_module)
        out_header("TYPES")
        exhaust_queue(type_queue, handle_type)

        type_catcher({
            "value": "Variant",
            "SpriteBatchUsage": "BufferDataUsage",
            "RenderTargetSetup": "Canvas", 
            "ImageFormat": "ImageEncodeFormat",
            "JoystickConstant": "JoystickHat",
            "numbers": "number",
            "ShaderVariableType": "type"})

        print("starting main extraction...")
        progress_bar = tqdm(total= len(module_queue) + len(type_queue) + len(enum_queue) + len(funciton_queue) + len(callback_queue))

        out_header("FUNCTIONS")
        exhaust_queue(funciton_queue, handle_function)
        out_header("ENUMS")
        exhaust_queue(enum_queue, handle_enum)
        out_header("CALLBACKS")
        exhaust_queue(callback_queue, handle_callback)

        out("---@diagnostic disable: lowercase-global")
        out("---@type love")
        out("love = love")
        out("--end")
        file = None
    progress_bar.close()
    print("Done!")

if __name__ == "__main__":
    main()