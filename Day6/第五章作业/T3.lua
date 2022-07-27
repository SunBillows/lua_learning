-- T5.3 假设要创建一个以转义序列为值、以转义序列对应字符串为键的表，请问应该如何编写构造器

local t = 
{
   ["newLine"] = "\n",
   ["alarm"]   = "\a",
   ["backSpace"]   = "\b",
}
print("Line".. t.newLine .. "Line")