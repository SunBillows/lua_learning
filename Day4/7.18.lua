
-- T1
t1 = {0,1,0,3,0}
t2 = {0,0,2,5,1}
t3 = {0,2,6,8}
function toCheck (list)
    table.sort(list) -- 把数组从小到大排序
    local zero_num = 0
    for k,v in pairs(list) do
         if v == 0 then
             zero_num = zero_num + 1
         elseif v ~= 0 then
             for i = k+1,#list do
                    if v == list[i] then
						print("该表不连续")
						return
                   end
             end
         end
    end
    if zero_num == 4 or zero_num ==5 then
      print("该表连续")
    elseif list[#list] - list[zero_num + 1] < 5 then
      print("该表连续")
    else
      print("该表不连续")
    end
end
toCheck(t2)
print("-----------------------------")


-- T2
ReverseTable = function(T)
	left = 1
	right = #T
	while(left < right)
	do
		temp = T[left]
		T[left] = T[right]
		T[right] = temp
		left = left + 1
		right = right - 1
	end
end
T = {1,2,3,4,5,6,7,8,9,10,11}
ReverseTable(T)
for i = 1,#T
do
	print(T[i])
end


--T3
Geometry = {}
Geometry.Pie = 3.14
FangS = function(length,width)
	return length * width
end
Geometry.FangS = FangS
print(Geometry.FangS(2,4))


-- T4
array = {0,1,2,3,4,5,6,7,8,9,10,11,111}
countK = function(a,k)
	count = 0
	for i = 1,#a
	do
		local temp = a[i]
		while temp ~= 0
		do
			if temp%10 == k then
				count = count + 1
			end
			temp = math.floor(temp / 10)
		end
	end
	return count
end
print(countK(array,1))


-- T5
FindFibonacciK = function(k)
	value1 = 0
	value2 = 1
	value = 0
	for i = 2,k
	do
		value = value1 + value2
		value1 = value2
		value2 = value
	end
	return value
end

print(FindFibonacciK(9))


-- T6
T = {["a"] = 1,["b"] = 2,["c"] = 3}
local temp = {}
for k,v in pairs(T)
do
	temp[v] = k
end
for k,v in pairs(temp)
do
	io.write(v,k)
end
io.write("\n")

-- T7
SameValueIndex = function(a,b)
	count = 0
	for i = 1,#a
	do
		if a[i] == b[i]
		then
			print(i)
			count = count + 1
		end
	end
	return count
end
table1 = {1,2,3,4}
table2 = {1,3,5,4}
number = SameValueIndex(table1,table2)
print(number)
