-- table实现下模拟的C++ dequeue

function listNew()
	return {first = 0,last = -1}
end

function push_front(list,value)
	local first = list.first - 1
	list.first = first
	list[first] = value
end

function push_last(list,value)
	local last = list.last + 1
	list.last = last
	list[last] = value
end

function pop_front(list)
	local first = list.first
	if first > list.first then
		io.write("list is empty","\n")
	end
	-- 判断边界条件
	local value = list[first]
	list[first] = nil
	list.first = first + 1

	return value
end

function pop_back(list)
	local last = list.last
	if last < list.first then
		io.write("list is empty","\n")
	end
	local value = list[last]
	list[last] = nil
	list.last = last - 1
	return value
end

function printdequeue(list)
	local cur = list.first
	while cur ~= list.last do
		io.write(list[cur]," ")
		cur = cur + 1
	end
	io.write("\n")
end

---------------------------------------------------------------------
deque = listNew()
push_last(deque,10)
push_last(deque,20)
push_last(deque,30)
push_last(deque,40)
push_last(deque,50)

printdequeue(deque)
