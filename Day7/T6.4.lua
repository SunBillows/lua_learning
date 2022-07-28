-- T6.4 请编写一个函数，该函数用于打乱一个指定的数组。请保证所有的排列都是等概率的

local function SamePercent(arr)
	for i = #arr,2,-1 do
		local j = math.random(1,i)
		if i~=j then
			local temp = arr[i]
			arr[i] = arr[j]
			arr[j] = temp
		end
	end
end