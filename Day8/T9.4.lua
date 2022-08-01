-- T9.4 使用几何区域系统的例子，绘制一个北半球所能看到的峨眉月


function disk(cx,cy,r)
	return  function(x,y)
				return (x - cx)^2 + (y - cy)^2 <= r^2
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

function translate(r,dx,dy)
	return function(x,y)
		return r(x - dx,y - dy)
	end
end

function difference(r1,r2)
	return function(x,y)
		return r1(x,y) and not r2(x,y)
	end
end

local c = disk(0,0,1)
plot(difference(c,translate(c,-0.3,0)),500,500)