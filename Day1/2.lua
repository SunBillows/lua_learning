a = 123
b = "string"

function ac()
	local b = 10
	print(b)
end

function  test(a)
	if type(a) == "function" then
		print("传入的为函数")
	else
		print(type(a))
	end
end

test(a)
test(b)
test(ac)
