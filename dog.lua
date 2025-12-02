-- Demonstration of OOP

-- Animal Class --
local Animal = {}
Animal.__index = Animal

-- Constructor
function Animal.new(name)
    local self = setmetatable({}, Animal)
    self.name = name    -- Member
    return self
end

-- Methods
function Animal:speak()
    print("Animal makes a sound")
end

function Animal:eat(food)
    print(self.name .. " eats " .. food)
end

-- Dog Class --

local Dog = {}
Dog.__index = Dog
setmetatable(Dog, Animal)

-- Constructor
function Dog.new(name)
    local self = setmetatable({}, Dog)
    self.name = name    -- Member
    return self
end

function Dog:speak() 
    print(self.name .. " barks!")
end


local Fido = Dog.new("Fido")

Fido:eat("kibble")
Fido:speak()