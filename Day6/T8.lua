---练习5.8 表标准库中提供了函数table.concact，该函数将制定表的字符串元素连接在一起。
---请实现该函数，并比较在大数据量情况下与标准库的性能差异

function table.my_slowConcat(t)
   local result = ""
   for i = 1,#t do
      result = result .. t[i] --字符串重复赋值 效率奇低
   end
   return result
end

function table.my_fastConcat(t) --这个效率会高的多
   local result = {}
   local temp = nil
   for i = 1,#t do
      temp = { string.byte(tostring(t[i])) } 
      for j = 1,#temp do
	     result[#result + 1] = temp[j]
	  end
   end
   return string.char(table.unpack(result))
end

local function test5_8()
    local a = {}
    for i = 1,200000 do
       a[i] = "a"
    end
    local startTime = os.time()
    table.concat(a)
    print("table.concat cost Time :" .. os.time() - startTime .. "s")
    startTime = os.time()
    table.my_slowConcat(a)
    print("table.my_slowConcat cost Time :" .. os.time() - startTime .. "s")
    startTime = os.time()
    table.my_fastConcat(a)
    print("table.my_fastConcat cost Time :" .. os.time() - startTime .. "s")
end
test5_8()

io.read()