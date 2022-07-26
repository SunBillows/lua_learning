-- T3 求两数的最小公倍数
-- 最小公倍数 = 两数之积/最大公约数
function getCommonMultiple(n,m)
	local x1,y1 = math.modf(m)
	local x2,y2 = math.modf(n)
	if(y1~=0 or y2~=0) then
		log("小数没有最大公倍数")
		return NULL
	end
	if m and n and m >0 and n> 0 then
		local res = 0
		local multi = m*n
		local div= getCommonDivisor(n,m)
		res = multi/div
		log("最大公倍数为："..res)
	else
		log("0和负数没有最大公倍数")
		return NULL
	end
end
getCommonMultiple(8,12)