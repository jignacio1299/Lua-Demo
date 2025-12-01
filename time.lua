local time_mt = {}
time_mt.__add = function(left, right)
    local newH = left.h + right.h
    local newM = left.m + right.m
    local newS = left.s + right.s

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
    
    return setmetatable({
        h = newH,
        m = newM,
        s = newS
    }, time_mt)
end



local time1 = setmetatable({ h = 15, m = 59, s = 59}, time_mt)
local time2 = setmetatable({ h = 10, m = 2,  s = 3  }, time_mt)

local time3 = time1 + time2

print(time3)
