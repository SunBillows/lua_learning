-- T5.6 请编写一个函数，该函数用于测试指定的表是否为有效的序列

local function isValidSequence(a)
	-- 若传入的参数不为 table ，则直接输出 false
    if type(a) ~= "table" then 
    	return false 
    end

    -- 找到 table 的有序下标有几个
    local numKeys = 0
    for _ in ipairs(a) do 
    	numKeys = numKeys + 1 
    end

    -- 使用迭代器遍历 table , 若所找到的索引不为整型或者找到了一个索引大于 numKeys ，则说明该 table 出现了断层或者 key 值不为数字
    for k in pairs(a) do
        if math.type(k) == "integer" and k > numKeys then
            return false
        end
    end
    return true
end

print(isValidSequence({1,2,3,4}))               --true
print(isValidSequence({1,nil,3,4}))             --false
print(isValidSequence({1,"a",3,4}))             --true
print(isValidSequence({1,2,3,nil}))             --true
print(isValidSequence({nil,2,3,4}))             --false
print(isValidSequence({nil,2, a = "b",nil}))    --false
print(isValidSequence("str"))                   --false
print(isValidSequence(nil))                     --false
print(isValidSequence({1,a = 2,3,4}))           --true
