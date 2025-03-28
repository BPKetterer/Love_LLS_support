# Setup
Simply copy the [love_lls.lua](love_lls.lua) into your project.

## When inluding as submodule:
To allow LuaLS to find the content and prevent the documentation of the generator, add this to you .vscode/settings.json:
```
{
        "Lua.workspace.ignoreDir": [
                "Love_LLS_support/src"
        ],
        "Lua.diagnostics.globals": [
                "love"
        ],
        "Lua.workspace.library": [
                "${workspaceFolder}/Love_LLS_support"
        ]
}
```

# Handeling Callbacks
Just define the type:
```
---@type love.load
function love.load()

end
```

# Why use this Love-LuaLS-repo?

## Pros:
- Table- and function-arguments are recursively documented (as far as data is available):
    - ie. you can see the fields of t in love.conf.
- Overloaded functions are documented for all signatures.
- All in a single file.
- Types should be the same as in the existing lls-repo.
- Prevents accidental inclusion.

## Cons:
- Not "time-tested".
- Gnu general public license. 
