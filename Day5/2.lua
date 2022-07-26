-- T2 求给出的两个数的最大公约数

function getCommonDivisor(n,m)
	local x1,y1 = math.modf(n)
	if y1~=0 then
		print("小数没有最大公约数")
		return NULL
	end
	
	local x2,y2 = math.modf(m)
	if y2~=0 then
		print("小数没有最大公约数")
		return NULL
	end

	if n and m and n > 0 and m > 0 then
		if n/m>1 then
			while(n%m~=0) do
				local temp = n%m
				n = m
				m = temp
			end
			print("最大公约数为："..m)
			return m
		else
			while(m%n~=0) do
				local temp = m%n
				m = n
				n = temp
			end
			print("最大公约数为："..n)
			return n
		end
	else
		print("负数和0没有最大公约数")
		return NULL
	end
end
getCommonDivisor(8,12)