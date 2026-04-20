local data = {}
local proxy = {}

local method = {}

setmetatable(proxy, {
    __index = function(_, key) -- __index = getter
        if method[key] then
            return method[key]
        else
            return data[key]
        end
    end,

    __newindex = function(_, key, value) -- __newindex = setter
        data[key] = value
    end,
})

function method:findAll()
    return data
end

function method:save(key, value)
    data[key] = value
end

return proxy
