local commands = {}

---@deprecated
function commands.Add(name, help, arguments, argsrequired, callback, permission)
    local properties = {
        help = help,
        restricted = permission and permission ~= "user" and 'group.'..permission or false,
        params = {}
    }
    for i = 1, #arguments do
        local argument = arguments[i]
        properties.params[i] = {
            name = argument.name,
            help = argument.help,
            type = argument.type or nil,
            optional = not argsrequired or argument?.optional
        }
    end
    lib.addCommand(name, properties, function(source, args, raw)
        local _args = {}
        for _, v in pairs(args) do
            _args[#_args + 1] = v
        end
        callback(source, _args, raw)
    end)
end

---@deprecated
function commands.Refresh(_) end

return commands