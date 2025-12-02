-- Demonstration of __index

-- Factorial metatable

local printer = require("printer")
local fact_mt = {

    -- Define __index
    __index = function(self, key)
        if key < 1 then
            return 1
        end

        self[key] = key * self[key - 1]
        return self[key]
    end
}

local factorialList = {}
setmetatable(factorialList, fact_mt)

print(factorialList[10])    -- Print 10!

-- 1! to 10! have also been cached 
printer.printMap(factorialList)
