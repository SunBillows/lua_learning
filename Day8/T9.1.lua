-- T9.1 请编写一个函数 integral ，该函数以一个函数 f 为参数并返回其积分的近似值

function integral(f,x1,x2,delta)
	-- delta 为 dx
	delta = delta or 1e-4
	local ans = 0
	for i = x1,x2,delta do
		ans = ans + f(i) * delta
	end
	return ans
end