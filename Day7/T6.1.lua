-- T6.1 请编写一个函数，该函数的参数为一个数组，打印出该数组的所有元素

function printarr(tab)
	for i = 1,#tab do
		io.write(tab[i]," ")
	end
end


local tab = {2,3,5,7,8,9,3}
printarr(tab)