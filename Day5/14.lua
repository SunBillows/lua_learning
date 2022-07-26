-- T14 模拟移位>>操作（例如给定二个数7,1,输出结果3）

function getRightDisplace(num,n)
	--右移几位就除以2的几次方
	num = math.floor(num/2^n)
	print(num)
end

getRightDisplace(7,1)
