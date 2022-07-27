-- T5.4
-- 编写一个求多项式值的函数
function duoxiangshi(T,x)
	local result = 0
	if type(T) ~= "table" or #T <= 0 then
		return result
	end
	for i = 1,#T
	do
		result = result + T[i] * x^(i - 1)
	end

	return result
end
print(duoxiangshi({1,2,3,4},3))