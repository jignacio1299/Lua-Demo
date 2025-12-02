-- Lua Tables demonstration

local listTable = { "1 based indexed", 2,  true, function() print(4) end }

local mapTable = {
    [1]     = true,
    ["2"]   = 2,
    three   = "third value",
    [function() return 0 end] = "fourth value"
}

print(mapTable)
print(listTable)
local calculator = {
    add = function(num1, num2)
        return num1 + num2
    end
}

local numbers = {10, 20, 30}

-- 1 BASE INDEX : prints 30 instead of 50
print(calculator.add(numbers[1], numbers[2]))
