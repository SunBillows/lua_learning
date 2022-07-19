-- 字符串
--字符串标准库
a = "hello lua"
len = string.len(a)					-- 返回字符串 s 的长度
print(len)

b = "abc"
string1 = string.rep(b,3)			-- 返回将字符串 s 重复 n 次的结果
print(string1)

c = "abcdefghijk"
string2 = string.reverse(c)			-- 用于字符串翻转
print(string2)
print(c)

d = "AbCdEfGhIjK"
string3 = string.lower(d)			-- 返回一份 s 字符串的副本，其中所有大写字母都被转换为小写字母，其他则不变，upper则相反
print(string3)
print(d)
string4 = string.upper(d)
print(string4)


--[[
	函数 string.sub(s, i, j) 从字符串 s 中提取第 i 个到第 j 个字符（包括第 i 个和 第 j 个字符 字符串的第一个字符索引为 1 该函数也支持负数索引
]]--
test1 = "hello world woailua"
Test_string1 = string.sub(test1,1,11)
print(Test_string1)
Test_string2 = string.sub(test1,5,12)
print(Test_string2)


-- 函数 string.char 接收零个或多个整数作为参数，然后将每个整数转换为对应的字符，最后返回由这些字符连接而成的字符串
Test_string3 = string.char(96,97,98,99)
print(Test_string3)

-- 函数 string.byte(s,i) 返回字符串 s 中第 i 个字符的内部数值表示，在该函数中，第二个参数是可选的
-- 调用 string.byte(s,i,j) 返回索引 i 到 j 之间的所有字符的数值表示
print(string.byte("abcde",4))
print(string.byte("abcde",1))
print(string.byte("abcde",-2))
print(string.byte("abcde"))








