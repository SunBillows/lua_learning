-- 表
-- 当把表当做结构体使用时，可以把索引当作成员名称使用(a.name = a["name"])
a = {}			-- 空白表
a.x = 10		-- 等价于 a["x"] = 10
print(a.x)      -- 等价于 print(a["name"])
print(a["x"])

print("================")
-- 区分 a.x 和 a[x]
x = "y"
b = {}
b[x] = 10
print(b[x])
print(b.x)
print(b["y"])
print(b.y)


print("================")
-- 表构造器
c = {i = 10,j = 20}
print(c.i)
print(c.j)
print(c["i"])
print(c[i])


print("================")
-- 表的嵌套
opnames = {
	["+"] = "add",
	["-"] = "sub",
	["*"] = "mul",
	["/"] = "div",
	{x_1 = 10,y_1 = 20},
	{x_2 = 30,y_2 = 40}
}
print(opnames["+"])
print(opnames[1].x_1)


print("================")
-- 表标准库

-- 函数 table.insert(table,pos,num) 向 table 表的指定位置 pos 插入 1 个元素 num，其它元素依次后移
-- 特殊情况，在 table.insert(table,num) 函数不指定位置时，此时函数会在表的最后插入元素，从而不用移动其他元素
Test_1 = {10,20,30}
table.insert(Test_1,2,50)
for i = 1,#Test_1
do
	io.write(Test_1[i].." ")
end
io.write("\n")
table.insert(Test_1,100)
for i = 1,#Test_1
do
	io.write(Test_1[i].." ")
end
io.write("\n")

-- 函数 table.remove(table,pos) 删除并返回 table 表中指定位 pos 的元素，然后将其后的元素向前移动填充删除元素后造成的空洞
-- 如果在调用该函数时不指定位置，该函数会删除序列的最后一个元素
Test_2 = {10,20,30,40,50}
table.remove(Test_2,2)
for i = 1,#Test_2
do
	io.write(Test_2[i].." ")
end
io.write("\n")
table.remove(Test_2)
for i = 1,#Test_2
do
	io.write(Test_2[i].." ")
end
io.write("\n")


-- 函数 table.move(table,pos1,pos2,pos3) 该函数可以将表 table 中 从索引 pos1 到 pos2 的元素(包括 pos1 位置和 pos2 位置上的元素本身)
-- 移动到位置 pos3 上
Test_3 = {10,20,30,40,50}
table.move(Test_3,2,3,5)
for i = 1,#Test_3
do
	io.write(Test_3[i].." ")
end