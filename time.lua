-- Demonstration of __add
local printer = require("printer")
-- Time metatable
local time_mt = {}

-- Define time addition behavior
time_mt.__add = function(left, right)
    local newH = left.h + right.h
    local newM = left.m + right.m
    local newS = left.s + right.s

    -- Update overflow values
    if newS >= 60 then
        newM = newM + 1
        newS = newS - 60
    end
    if newM >= 60 then
        newH = newH + 1
        newM = newM - 60
    end
    if newH >= 24 then
        newH = newH - 24
    end
    
    -- Return the table
    return setmetatable({
        h = newH,
        m = newM,
        s = newS
    }, time_mt)

end

-- Define two times 
local time1 = { h = 15, m = 59, s = 59 }
local time2 = { h = 10, m = 2,  s = 3  }

-- Add addition behavior through metatable
setmetatable(time1, time_mt)
setmetatable(time2, time_mt)

-- Add them together utilizing the metatable for time
local time3 = time1 + time2

printer.printMap(time3)
