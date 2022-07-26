-- T6 给出一组数（0-100，从小到大排序,50这个数是特列要求排序最前面）
t1 = {1,3,50,50,23,54}
function sortTable(t)
	local t2 = {}
	local count = 1

	for i = 1,#t do
		if(t[i]==50) then
			t2[count] = t[i]
			count = count+1
		end
	end
	table.sort(t)
	
	for i = 1, #t do
		if t[i]~=50 then
			t2[count] = t[i]
			count = count+1
		end
	end
	for i = 1, #t2 do
		io.write(t2[i],"\t")
	end
	return t2
end
sortTable(t1)