-- Test4.1 
-- 长字符串形式
local page1 = 
[=[
<![CDATA[
	hello world
]]>
]=]

-- 直接打印
local page2 = "<![CDATA[\n\thello world\n]]>"
print(page1)
print(page2)


-- Test4.3
insert = function(str1,index,str2)
	-- 判断 str2 是否为空，若为空则直接返回 str1
	if not str2 then
		return str1
	end

	-- 判断索引位置,若索引位置小余 1 ，直接返回 str2..str1 , 若索引位置大于 #str1 ,则返回 str1..str2
	index = index or str1			-- 若 index == 0 ， 则 index = 1
	local len = #str1
	if index <= 1 then
		return str2..str1
	elseif index >= len then
		return str1..str2
	end
	-- 提取 str1 中 1 到 index 之间的字符串和 index + 1 到最后一个位置的字符串
	-- 进行拼接
	local str,str_ = string.sub(str1,1,index - 1),string.sub(str1,index,-1)
	str = str..str2..str_
	return str
end

print(insert("hello world",1,"start: "))
print(insert("hello world",7,"small "))
print(insert("hello world",-2,"start: "))
print(insert("hello world",20,"start: "))


-- Test4.5
remove = function(str1,pos,num)
	-- 判断 str1 是否有数，若为 nil 则报错
	if not str1 then
		print("error: str1 is nil")
	end
	-- 若 pos + num >= len ，则直接输出 str1 中 1 到 pos - 1 范围内的字符串
	local len = #str1
	if pos - 1 + num >= len then
		str1 = string.sub(str1,1,pos - 1)
		return str1
	end

	-- 利用替换进行删除操作
	-- 首先找到所要删除字符串
	local delstr = string.sub(str1,pos,pos + num - 1)
	local del = ""
	-- 进行替换操作
	return string.gsub(str1,delstr,del)
end

-- ans = remove("hello world",7,4)
ans = remove("hello world",7,4)
print(ans)


-- Test4.7
ispali = function(str)
	if not str then
		print("error:str is nil")
	end
	return str == string.reverse(str)
end
print(ispali("step on no pets"))
print(ispali("tenaet"))