-- while 循环: 在条件为 true 时，让程序重复执行某些语句。执行语句前会先检查条件是否为 true
a = 8
while(a<20)
do
	if a < 12
	then
		print("a < 12 a = "..a)
	else
		print("a >= 12 a = "..a)
	end
	a = a + 1
end

-- for 循环：重复执行某些语句，重复次数可在 for 语句中控制
--[[
	for var = exp1,exp2,exp3
	do
		<执行体>
	end
	var 从 exp1 变化到 exp2，每次变化以 exp3 为步长递增 var，并执行一次“执行体”。exp3 是可选的，如果不指定则默认为1
]]--
a = 5
for i = a,0,-1
do
	print("a = "..i)
end
