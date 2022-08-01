-- T9.3 练习5.4要求我们编写一个以多项式(使用表表示)和值 x 为参数、返回结果为对应多项式值的函数。
-- 请编写该函数的柯里化版本，该版本的函数应该以一个多项式为参数并返回另一个函数
-- (当这个函数的入参是指 x 时返回对应多项式的值)。考虑如下的示例

function newpoly(tab)
	return function(x)
		local sum = 0
		local count = 0
		for i = 1,#tab do
			sum = sum + tab[i] * x^count
			count = count + 1
		end
		return sum
	end
end

f = newpoly({3,0,1})
print(f(0))	  --> 3
print(f(5))   --> 28
print(f(10))  --> 103