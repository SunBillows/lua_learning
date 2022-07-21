-- T5.1
sunday = "monday"; monday = "sunday"
t = {
	sunday = "monday",
	[sunday] = monday
} 
print(t.sunday, t[sunday], t[t.sunday]) 		-- monday,sunday,sunday

--T5.2
a = {}
a.a = a
print(a.a.a.a)    								-- a的地址
a.a.a.a = 30									-- 此时表已经变成了 number 3 ，后续的表访问会出错


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


-- T5.5
-- 改写上述函数，使之最多使用 n 个加法和 n 个乘法(且没有指数)
function duoxiangshi_1(T,x)
	local result = 0
	if type(T) ~= "table" or #T <= 0 then
		return result
	end
	
	for i = #T,1,-1 
	do
		result = T[i] + result * x
	end

	return result
end
print(duoxiangshi_1({1,2,3,4},3))


-- T5.6
