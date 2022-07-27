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
