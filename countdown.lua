-- Demonstration of coroutines

local function nums1And5()
    print(5)
    -- Let the next coroutine run
    coroutine.yield()

    print(1)
end

local function nums234()
    print(4)
    print(3)
    print(2)
end

-- Without coroutines, prints 1 5 2 3 4
-- nums1And5()
-- nums234()

-- With coroutines

local Routine1 = coroutine.create(nums1And5)
local Routine2 = coroutine.create(nums234)

coroutine.resume(Routine1)
coroutine.resume(Routine2)
coroutine.resume(Routine1)