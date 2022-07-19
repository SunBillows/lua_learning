T={2,5,3,4,5,["key1"] = "value1",["key2"] = "value2"}
print(T["key1"])
for k,v in pairs(T)
do
	print(k,v)
end
for k,v in ipairs(T)
do
	print(k,v)
end
