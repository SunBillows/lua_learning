-- T9.5 在集合区域系统的例子中，增加一个函数来实现将指定的区域旋转指定的角度

-- require 'T9.4'

local function rect(left,right,bottom,up)
   return function(x,y)
      return left <= x and x <= right and bottom <= y and y <= up
   end
end

function plot(r,M,N)
	io.write("P1\n",M," ",N,"\n")
	for i = 1,N do
		local y = (N - i*2)/N
		for j = 1,M do
			local x = (j*2 - M)/M
			io.write(r(x,y) and "1" or "0")
		end
		io.write("\n")
	end
end

function difference(r1,r2)
	return function(x,y)
		return r1(x,y) and not r2(x,y)
	end
end

local function rotate(r,angle)
   return function(x , y)
      local rad = math.rad(angle)
      return r(x * math.cos(rad) - y * math.sin(rad),x * math.sin(rad) + y * math.cos(rad))
   end
end
local square = rect(-1,1,-1,1)
plot((rotate(square,45)),50,50)