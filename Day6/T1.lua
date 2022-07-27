-- T5.1 下列代码的输出是什么？为什么？

sunday = "monday"; monday = "sunday"
t = {
	sunday = "monday",
	[sunday] = monday
} 

-- t = { ["sunday"] = "monday" , ["monday"] = "sunday"}

print(t.sunday, t[sunday], t[t.sunday]) 		-- monday,sunday,sunday

-- t.sunday --> t["sunday"] = "monday"
-- t[sunday] --> t["monday"] = monday = "sunday"
-- t[t.sunday] --> t["monday"] --> monday = "sunday"