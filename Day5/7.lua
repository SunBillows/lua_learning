require "log"
-- T7 编写一个函数，输入n为偶数时，调用函数求1/2+1/4+...+1/n,当输入n为奇数时，调用函数 1/1+1/3+...+1/n
function getNsum(n)
	if n<=0 then
		print("输入不能为0或负数")
		return NULL
	end
	local sum = 0
	local num1 = 1
	local num2 = 2
	if n%2==0 then
		while(n~=0) do
			sum = sum + 1/num2
			num2 = num2+2
			n = n-2
		end
	else
		while(n~=1) do
			sum = sum + 1/num1
			num1 = num1+2
			n = n-2
		end
	end
	log(sum)
	return sum
end
getNsum(5)