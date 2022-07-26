-- T5 给一个不多于5位的正整数，要求：一、求它是几位数，二、逆序打印出各位数字。
function getNum(n)
	local count = 0
	io.write("逆序打印为：")
	while n~=0 do
		--得到余数
		local single = n%10
		--减少10倍
		n = n//10
		--记录位数
		count = count+1
		io.write(single)
	end
	io.write("\t它的位数为",count,"\n")
end
getNum(2000)