-- Lua Tables demonstration
local printer = require("printer")

local listTable = { true, 2,  "3", function() print(4) end }

local mapTable = {
    [1]     = true,
    ["2"]   = 2,
    three   = "third value",
    [function() return 0 end] = "fourth value"
}

printer.printList(listTable)
printer.printMap(mapTable)





local calculator = {
    add = function(num1, num2)
        return num1 + num2
    end
}

local numbers = {10, 20, 30}

-- 1 BASE INDEX: prints 30 instead of 50
print(calculator.add(numbers[1], numbers[2]))
