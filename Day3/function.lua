-- 函数


-- 可边长参数函数
function add(...)
	local s = 0
	for i,v in ipairs{...}
	do
		s = s + v
	end
	return s
end

print(add(1,2,3,4,5))


function id(...)
	return ...
end
print(id(1,2,3))


function foo(...)
	print("calling foo:",...)
	return foo(...)
end


-- 函数 table.unpack() ,参数为一个数组，返回值为数组内所有元素
T1 = {1,2,3,4,5,67}
print(table.unpack(T1))