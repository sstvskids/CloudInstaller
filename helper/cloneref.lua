-- cloneref works for instances 
if not setmetatable then
    getgenv().cloneref = function(val)
        return val
    end
end

local function cloneref(val)
end

getgenv().cloneref = cloneref