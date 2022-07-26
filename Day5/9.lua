-- T9.十进制转二进制（例如，给定一个数20输出10100）

function TenToTwo(n)
	local ans = {}
	for i = 64,1,-1 do
		if n & 1 == 0 then
			ans[i] = "0"
		else
			ans[i] = "1"
		end
		n = n >> 1
	end
	for i = 1,#ans do
		io.write(ans[i]," ")
	end
end
TenToTwo(-20)