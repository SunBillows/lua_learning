-- T12 模拟两数 ~ 异或操作(例如，给定二个数，171,205输出结果102)

require '10'

function XOR(num1,num2)
	local temp1 = getDecimalNumber(num1)
	local temp2 = getDecimalNumber(num2)
	local str = ""

	for i = 1,64 do
		local s1 = temp1[i]
		local s2 = temp2[i]
		if s1 == s2 then
			str = str.."0"
		else
			str = str.."1"
		end
	end
	return tonumber(str,2)
end

print(171~-205)
print(XOR(171,-205))