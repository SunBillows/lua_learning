-- 1.获得数组中最大值的例子
getMaxNum = function(T)
	max = T[1]
	for i=1 ,#T  
	do
		if(T[i]>max) then
			max = T[i]
		end
	end
	return max
end
arr = {4,100,1,5}
max = getMaxNum(arr)
print(max)

-- 2.一个简单的例子来实现数字n的几次方
getNnum = function(num,n)
	local res = num
	if(n==0) then
		return 1
	elseif n < 0 then
		local n_ = -n
		for i = 2,n_
		do
			res = res*num
		end
		res = 1 / res
	else
		for i = 2,n 
		do
			res = res*num
		end
	end
	return res
end
n = getNnum(4,-2)
print(n)



--3.定义一个函数，传入两个参数并相加，相减，相乘，相除，取余，返回他们的运行结果
getOperation = function(num1,num2)
	add = num1+num2
	sub = num1-num2
	multi = num1*num2
	div = num1/num2
	residual = num1%num2
	return add,sub,multi,div,residual
end
a = {}
a,b,c,d,e = getOperation(3,4)
print(a,b,c,d,e)

-- 4.定义一个函数利用循环让这个函数能够计算n的阶乘
getFactorial2 = function(n)
	if(n==1) then
		return 1
	else
		return n*getFactorial(n-1)
	end
end
function getFactorial1(n)
	if(n==1 or n==0) then
		return 1
	end
	res = n
	while n>1 do
		res = res*(n-1)
		n = n-1
	end
	return res
end
n = getFactorial1(2)
print(n)


--5.斐波那契数列
Fibonacci = function(n)
	local num1 = 0
	local num2 = 1
	for i = 1,n
	do
		if i == 1 then
			io.write(num1," ")
		elseif i == 2 then
			io.write(num2," ")
		else
			local temp = num1 + num2
			io.write(temp," ")
			num1 = num2
			num2 = temp
		end
	end
end
Fibonacci(8)
io.write("\n")



-- 6.输出三角形的形状
function getTriangle(a,b,c)
	--先判断输入是否合法
	if(a<=0 or b<=0 or c<=0) then
		print("三角形边长不能小于等于0")
	else
		--找出最大的边
		if a>c then
			local temp = c
			c = a
			a = temp
		end
		if b>c then
			local temp = c
			c = b
			b = temp
		end
		--判断输入是否合法
		if a+b<=c then
			print("三角形的任意两边之和需要大于第三边")
		else
		--判断形状
			if a*a+b*b==c*c then
				print("直角三角形")
			elseif a*a+b*b>c*c then
				print("锐角三角形")
			elseif a*a+b*b<c*c then
				print("钝角三角形")
			end
		end
	end
end

getTriangle(1,1,3)


--7.9*9乘法表
function multiTable()
	for i=1,9 do
		s=""
		for j=1,i do
			s = s..j.."x"..i.."="..j*i.."\t"
		end
		print(s)
	end
end
multiTable()

--8.要求用户输入一个年份，判断并输出该年份是闰年还是平年。
function isLeapYear(year)
	if(year%100~=0 and year%4==0) then
		print("是闰年")
	elseif year%400==0 then
		print("是闰年")
	else
		print("不是闰年")
	end
end
isLeapYear(2024)

--9.要求用户输入两个整数，判断第一个整数是否是第二个整数的倍数。
function isMultiple(num1,num2)
	if num1==0 or num2==0 then
		print("零没有倍数也不是任何数的倍数")
	elseif num1<num2 then
		print("不是第二个数的倍数")
	elseif num1%num2~=0 then
		print("是第二个数的倍数")
	else
		print("不是第二个数的倍数")
	end
end
isMultiple(2,4)

-- 10.要求用户输入一个年份和一个月份，判断（要求使用嵌套的if…else分别判断一次）该年该月有多少天。
function monthDays(year,month)
	if (month==1 or month==3 or month==5 or month==7 or month==8 or month == 10 or month==12) then
		print("该月有31天")
	elseif month==4 or month==6 or month==9 or month==11 then
		print("该月有30天")
	elseif month==2 then
		if(year%100~=0 and year%4==0) then
			print("该月有29天")
		elseif year%400==0 then
			print("该月有29天")
		else
			print("该月有28天")
		end
	else
		print("输入月份有误")
	end
end
monthDays(2008,2)


-- 12.使用while循环求1~100以内所有奇数的和。
function getOddnum()
	sum = 0
	i=1
	while(i<100) do
		sum = sum+i
		i = i+2
	end
	print(sum)
end
getOddnum()


--13.使用while循环求式子2+22+222+2222+22222的和。p=p*10+2;
function get2Numsum(n)
	local i = 2
	local sum = 2
	local ans = 2
	while i<=n do
		sum = sum*10 + 2
		ans = ans + sum
		i = i+1
	end
	return ans
end
p = get2Numsum(5)
print(p)



--14.请编程验证一下“角谷猜想”：对任意的自然数，若是奇数，就对它乘以3加1；若是偶数就对它除以2；
--	 这样得到一个新数，再按上述奇数、偶数的计算规则进行计算，一直进行下去，最终将得到1。
function AngularValleyConjecture(n)
	if(n==1) then
		print("猜想正确")
		return 1
	else
		if(n%2~=0) then
			n = n*3+1
		else
			n = n/2
		end
		print("猜想执行一次")
		AngularValleyConjecture(n)
	end
end
AngularValleyConjecture(3)