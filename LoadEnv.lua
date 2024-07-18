local fenv = getfenv()[name]
local env = {}

--

return setmetatable({}, {
    __index = function(self, name)
        return env[name] or fenv
    end,
    __newindex = function(self, name, value)
        env[name] = value
    end
})
