-- T5.7 请编写一个函数，该函数将指定列表的所有元素插入到另一个列表的指定位置

local function InsertAllToPos(source,des,pos)
    for i = 1,#source do
	   table.insert(des,pos,source[i])
	   pos = pos + 1
	end
end


local source = {4,5,6}
local des = {1,2,3,7,8,9}
local result = ""
InsertAllToPos(source,des,4)
for i = 1,#des do 
    result = result .. des[i] .." "
end
print(result)
