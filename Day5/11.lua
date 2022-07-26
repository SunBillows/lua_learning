-- T11 模拟两数 | 或操作(例如，给定二个数，171,205输出结果239)

require '10'
function OR(num1,num2)
	local temp1 = getDecimalNumber(num1)
	local temp2 = getDecimalNumber(num2)
	local str = ""

	for i = 1,64 do
		local s1 = temp1[i]
		local s2 = temp2[i]
		if s1 == 1 or s2 == 1 then
			str = str.."1"
		else
			str = str.."0"
		end
	end
	return tonumber(str,2)
end

print(171|205)
print(OR(171,205))