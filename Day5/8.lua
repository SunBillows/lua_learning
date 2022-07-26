require "log"
-- 	T8 八进制转换为十进制 (例如，给定一个数12输出10)
function getOctalNumber(n)
	if(n==0) then
		print("0")
		return 0
	elseif n<0 then
		n = -n
		local table1 = {}
		local count = 1
		while n~=0 do
			local single = n%10
			table1[count] = single
			count = count+1
			n = n//10
		end
		local sum = table1[1]
		for i = 2,#table1 do
			local temp = table1[i]*(8^(i-1))
			sum = sum + temp
		end
		--将浮点型转换为整形
		sum = math.tointeger(sum)
		sum = -sum
		log(sum)
		return sum
	else

		local table1 = {}
		local count = 1
		while n~=0 do
			local single = n%10
			table1[count] = single
			count = count+1
			n = n//10
		end
		local sum = table1[1]
		for i = 2,#table1 do
			local temp = table1[i]*(8^(i-1))
			sum = sum + temp
		end
		sum = math.tointeger(sum)
		log(sum)
		return sum
	end
end
getOctalNumber(12)