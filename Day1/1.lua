-- 定义一个计算阶乘的函数
function fact(n)
	if n == 0 then
		return 1
	else
		return n * fact(n - 1)
	end
end

--print("enter a number:")
--a = io.read("*n")
--print(fact(a))

-- 定义变量
_123 = 123
print(_123)

str1 = "...\\123'a"
str2 = '...\\123"a'
print(str1)
print(str2)
