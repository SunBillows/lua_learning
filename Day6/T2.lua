-- T5.2 考虑如下代码
a = {}
a.a = a
-- a.a.a.a的值是什么？其中的每个 a 都一样吗？
-- a.a.a.a的值是table a的地址，每个a都一样
print(a.a.a.a)    								-- a的地址

a.a.a.a = 30									-- 此时表已经变成了 number 3 ，后续的表访问会出错