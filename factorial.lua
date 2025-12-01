local fact_mt = {
    __index = function(self, key)
        if key == 0 then
            return 1
        end

        self[key] = self[key] * self[key - 1]
    end
}

local factorialList = setmetatable({}, fact_mt)

print(factorialList[2])
print(factorialList[3])
print(factorialList[10])
print(factorialList)
 