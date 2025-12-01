-- Demonstration of __index

-- Factorial metatablep

local printer = require("printer")
local fact_mt = {

    -- Define __index
    __index = function(self, key)
        if key < 2 then
            return 1
        end

        self[key] = key * self[key - 1]
        return self[key]
    end
}

local factorialList = setmetatable({}, fact_mt)

print(factorialList[2])     -- Print 2!
print(factorialList[3])     -- Print 3!
print(factorialList[10])    -- Print 10!

printer.printMap(factorialList)
