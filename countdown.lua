-- TODO: Make concurrency example

local printNums1 = function()
    for i = 1, 10, 1 do
        print("Coroutine 1: " .. i)
    end
    print("Done\n")
    coroutine.yield()
end

local printNums2 = function()
    for i = 10, 20, 1 do
        print("Coroutine 2: " .. i)
    end
    print("Done\n")
    coroutine.yield()
end

local routine1 = coroutine.create(printNums1)
local routine2 = coroutine.create(printNums2)

coroutine.resume(routine1)
coroutine.resume(routine2)