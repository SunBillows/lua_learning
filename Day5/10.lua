-- T10 模拟两数 & 与操作（例如，给定二个数，171,205输出结果137)

-- 10进制求2进制函数
function getDecimalNumber(n)
	if(n==0) then
		print("0")
		return 0
	elseif n>0 then
		--lua中number二进制长度为64，初始化一个64长度的tabl
		tab1 = {}
		for i = 1,64  do
			tab1[i] = 0
		end
		local index = 64
		--循环把余数放入tab1
		while n~=0 do
			local single = n%2
			tab1[index] = single
			n = n // 2
			index = index-1
		end
		return tab1
	elseif n<0 then
		n = -n
		--初始化一个64长度的tabl
		tab1 = {}
		for i = 1,64  do
			tab1[i] = 0
		end
		local index = 64
		--循环把余数放入tab1
		while n~=0 do
			local single = n%2
			tab1[index] = single
			n = n // 2
			index = index-1
		end
		--取反
		for i = 1,64 do
			if tab1[i]==0 then
				tab1[i] = 1
			else
				tab1[i] = 0
			end
		end
		--二进制加1
		for i = 64 ,1,-1 do
			if tab1[i] == 0 then
				tab1[i] = 1
				break
			else
				tab1[i]=0
			end
		end
		return tab1
	end
end

function And(num1,num2)
	-- 首先求出两个数的二进制数，将其存放在两个表中
	local temp1 = getDecimalNumber(num1)
	local temp2 = getDecimalNumber(num2)
	local str = ""

	for i = 1,64 do
		local s1 = temp1[i]
		local s2 = temp2[i]
		if s1==s2 then
			if s1 == 1 then
				str = str.."1"
			else
				str = str.."0"
			end
		else
			str = str.."0"
		end
	end
	return tonumber(str,2)
end
print(171&-200)
print(And(171,-200))