Animal = {}

function Animal:speak()
    print("Animal makes a sound")
end


Dog = { __index = Dog }
setmetatable(Dog, { __index = Animal })

function Dog:speak() 
    print("Bark")
end


animal = setmetatable({}, Animal)
dog = setmetatable({}, Dog)

animal:speak()  
dog:speak()  
