-- T1 打印出1-100中3的倍数
function printMuitiple(n)
	for i = 1,100 do
		if i%n==0 then
			io.write(i.."\t")
		end
	end
	print()
end
printMuitiple(3)