-- table模拟C++ list(双向循环链表)

-- 定义一个空的双向循环链表结点
List = {}
local node = {next = List.node,pre = List.node,value = nil}
List.head = node
List.tail = node
List.length = 0


-- 头插法
function List.push_front(num)
	-- 如果链表为空时
	if List.head == List.tail then
		-- 新建一个结点，其 next 指向空节点，pre 指向空节点
		local node = {next = List.tail,pre = List.tail,value = num}
		List.tail.pre = node
		List.head = node
		List.tail.next = List.head
		List.length = List.length + 1
	else
		-- 新产生一个 node 的表，其 next 指向头结点 
		local node = {next = List.head,pre = List.tail,value = num}
		-- 链表中的头结点指向新产生的 node 结点
		List.head.pre = node
		List.head = node
		List.tail.next = List.head
		List.length = List.length + 1
	end
end


-- 尾插法
function List.push_back(num)
	-- 如果链表为空时
	if List.head == List.tail then
		local node = {next = List.tail,pre = List.tail,value = num}
		List.tail.pre = node
		List.head = node
		List.tail.next = List.head
		List.length = List.length + 1
	else
		-- 新产生一个 node 的结点，其 next 指向 nil
		local node = {next = List.tail,pre = List.tail.pre,value = num}
		-- 尾部结点 tail 指向新产生的结点
		List.tail.pre.next = node
		List.tail.pre = node
		List.length = List.length + 1
	end
end


-- 头删法
function List.pop_front()
	-- 边界条件
	if List.length == 0 then
		io.write("该链表为空，无法进行删除","\n")
	else
		local temp = List.head
		List.head = List.head.next
		List.head.pre = List.tail
		List.length = List.length - 1
		temp = nil
	end
end


-- 尾删法
function List.pop_back()
	-- 边界条件
	if List.length == 0 then
		io.write("该链表为空，无法进行删除","\n")
	else
		local temp = List.tail.pre
		temp.pre.next = List.tail
		List.tail.pre = temp.pre
		temp = nil
	end
	List.length = List.length - 1
end


-- 打印链表
function List.printList()
	if List.length == 0 then
		io.write("nil")
	else
		cur = List.head
		while cur ~= List.tail do
			io.write(cur.value," ")
			cur = cur.next
		end
	-- io.write("nil")
	end
end


--------------------------------------------------------------------------------
l = List
l.push_front(1)
l.push_front(2)
l.push_front(3)
l.push_back(4)
l.push_back(5)
l.pop_front()
l.push_back(6)
l.pop_back()
-- l.push_back(6)
-- io.write(l.length,"\n")
l.printList()