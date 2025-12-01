local printer = {}

printer.printMap = function(table)
    print("Printing map...")
    print("Keys", "Values")
    for key, value in pairs(table) do
        print(key, value)
    end
    print()
end

printer.printList = function(table)
    print("Printing list...")
    print("Indexes", "Values")
    for i, value in ipairs(table) do
        print(i, value)
    end
    print()
end

return printer