
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

--[[
--T3
Geometry = {}
Geometry.Pie = 3.14
FangS = function(length,width)
	return length * width
end
Geometry.FangS = FangS
print(Geometry.FangS(2,4))


-- T4
array = {2,2,6,3,5,5,4,2,2,2}
countK = function(a,k)
	count = 0
	for i = 1,#a
	do
		if a[i] == k then
			count = count + 1
		end
	end
	return count
end
print(countK(array,2))


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
i = 0
key = {}
value = {}
for k,v in pairs(T)
do
	key[i] = k
	value[i] = v
	i = i + 1
end
table.sort(key)
table.sort(value)
s = ""
print(i)
for v = 1,3
do
	s = s..key[v]..value[v]
end
print(s)


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
]]--
