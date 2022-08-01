-- table实现下模拟的C++vector dequeue list

-- 定义一个空表
vector = {}

-- 数组长度
vector.length = 0
-- 判断该数组是否为空
function vector.empty()
	if vector.length == 0 then
		return "true"
	else
		return "false"
	end
end


-- vector容器所需要的函数

-- 尾插法
function vector.push_back(num)
	table.insert(vector,num)
	vector.length = vector.length + 1
end

-- 尾删法
function vector.remove_back()
	table.remove(vector)
	vector.length = vector.length - 1
end

-- 删除指定元素
function vector.remove(num)
	::FLAG::
	for k,v in ipairs(vector) do
		if v == num then
			table.remove(vector,k)
			vector.length = vector.length - 1
			goto FLAG
		end
	end
end

-- 在指定位置插入指定元素
function vector.insert(pos,num)
	table.insert(vector,pos,num)
	vector.length = vector.length + 1
end

-- 清空整个容器
function vector.clear()
	for i = 1,vector.length do
		vector[i] = nil
		vector.length = vector.length - 1
	end
end




-----------------------------------------Test---------------------------------------------------------
v = vector

v.push_back(5)
v.push_back(7)
v.push_back(10)
v.push_back(2)
v.push_back(50)
v.push_back(30)
v.push_back(7)
for i = 1,v.length do
	io.write(v[i]," ")
end
io.write("\n")
print(v.length)

v.remove_back()
v.remove_back()
v.remove_back()
for i = 1,v.length do
	io.write(v[i]," ")
end
io.write("\n")
print(v.length)

print(v.empty())

v.remove(10)
for i = 1,v.length do
	io.write(v[i]," ")
end
io.write("\n")
print(v.length)

v.clear()
print(v.empty())
