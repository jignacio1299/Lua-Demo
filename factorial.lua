-- Demonstration of __index

-- Factorial metatable
local fact_mt = {

    -- Define __index
    __index = function(self, key)
        if key == 0 then
            return 1
        end

        self[key] = self[key] * self[key - 1]
    end
}

local factorialList = setmetatable({}, fact_mt)

print(factorialList[2])     -- Print 2!
print(factorialList[3])     -- Print 3!
print(factorialList[10])    -- Print 10!
print(factorialList)        -- Print whole table, all values cached
