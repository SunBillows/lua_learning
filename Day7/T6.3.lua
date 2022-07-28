-- T6.3 请编写一个函数，该函数的参数为可变数量的一组值，返回值为除最后一个元素之外的其他所有值

function printChangeArrNoLast(...)
	local tab = {...}
	table.remove(tab)
	print(table.unpack(tab))
end

printChangeArrNoLast(1,2,34,5,6,7)