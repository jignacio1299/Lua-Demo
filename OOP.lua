-----------------------Vehicle Class---------------------------

local vehicle = {}
vehicle.__index = vehicle

-- Constructor
function vehicle.New(make, model)
    local self = setmetatable({}, vehicle) -- New instance of a vehicle

    -- Members
    self.make = make
    self.model = model
    self.mileage = 0
   
    return self -- Return the newly created vehicle
end

-- Drive Method (the colon operator automatically passes the vehicle table as a parameter so it can be accessed in the function)
function vehicle:Drive(distance)
    self.mileage = self.milage + distance
end

-- Print Method
function vehicle:Print()
    print("This " .. self.make .. self.model .. " has driven " .. self.mileage .. " miles.")
end

---------------------------------------------------------------

-------------------------Truck Class---------------------------

local truck = {}

--Constructor
function truck.New(make, model)
    local self = setmetatable({}, vehicle) -- New truck object

    -- Vehicle Base
    self = vehicle.New(make, model)

    -- Truck Members
    self.cargo = {}
    self.maxWeight = 100

    return self
end 