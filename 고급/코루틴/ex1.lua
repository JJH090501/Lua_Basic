local function example(arg1)
    print("Example function called with argument: " .. arg1)
    local received = coroutine.yield("Yielded value from coroutine")
    print("Coroutine resumed with value: " .. received)
    return "Coroutine finished"
    
end

local co = coroutine.create(example)
print("Coroutine status:", coroutine.status(co)) -- 출력: suspended
local success, result = coroutine.resume(co, "Hello, Coroutine!")
local status = coroutine.status(co)
local result2 = coroutine.resume(co, "Resuming Value")


print("Coroutine status after resume:", coroutine.status(co)) -- 출력: dead