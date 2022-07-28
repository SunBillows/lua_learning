-- 练习6.5 请编写一个函数，它传入一个数组并打印该数组中所有元素的组合。
-- 提示：可以使用组合的递推公式C(n,m) = C(n - 1,m - 1) + C(n - 1,m)。
-- 要计算从n个元素中选出m个组成的组合C(n,m)。可以先将第一个元素加到结果集中，然后计算其他元素的C(n - 1,m - 1)；
-- 然后从结果集中删掉第一个元素，再计算其他所有剩余元素的C(n - 1, m)。
-- 当n < m 时，组合不存在；当 m = 0 时，只有一种组合（一个元素都没有）

local isContain = {}

function Contain(tab,index)
	if index == #tab + 1 then
		io.write("{"," ")
		for k,v in pairs(isContain) do
			if v then
				io.write(tab[k]," ")
			end
		end
		io.write("}"," ")
		io.write("\n")
	else
		isContain[index] = true
		Contain(tab,index + 1)
		isContain[index] = false
		Contain(tab,index + 1)
	end
end

tab = {1,2,3}
Contain(tab,1)