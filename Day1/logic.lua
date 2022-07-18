print(4 and 5)
print(nil and 5)
-- and 运算符：如果它的第一个操作数为“false”，则返回第一个操作数，否则返回第二个操作数

print(4 or 5)
print(nil or 5)
-- or 运算符：如果它的第一个操作数不为“false”，则返回第一个操作数，否则返回第二个操作数

a = 10
b = 5
print(a>b and a or b)
--等价与C语言中的 a>b?a:b

-- not 运算符永远返回 boolean 类型的值
print(not nil)		-- true
print(not 0)		-- false
print(not 1)		-- false
print(not false)	-- true
print(not not nil)	-- false
