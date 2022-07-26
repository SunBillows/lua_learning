-- T13 模拟移位 << 操作，（例如给定二个数 1,3输出结果8）

function getLeftDisplace(num,n)
	--左移几位就乘2的几次方
	num = math.floor(num*2^n)
	print(num)
end
getLeftDisplace(-2,3)