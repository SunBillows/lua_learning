-- T4 有一分数序列：2/1，3/2，5/3，8/5，13/8，21/13...求出这个数列的前20项之和。
function getSum()
	local num1 = 2
	local num2 = 1
	local sum = 2
	local i = 2
	while i<20 do
		local temp = num1
		num1 = num1+num2
		num2 = temp
		sum = sum + num1/num2
		i = i + 1
	end
	print("前20位和为：",sum)
end
getSum()