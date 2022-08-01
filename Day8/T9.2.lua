-- T9.2 请问如下的代码段将输出怎样的结果：

function F(x)
	return 
	{
		set = function(y) x=y end ,
		get = function() return x end
	}
end

o1 = F(10)							-- 表的地址
print(o1)
o2 = F(20)							-- 表的地址
print(o2)
print(o1.get(),o2.get())			-- 10,20
o2.set(100)
o1.set(300)
print(o1.get(),o2.get())			-- 300,100