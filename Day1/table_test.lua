mytable = {}
print("mytable 的类型是 ",type(mytable))							--table

mytable[1]= "Lua"
mytable["wow"] = "修改前"
print("mytable 索引为 1 的元素是 ", mytable[1])						--mytable 索引为 1 的元素是 lua
print("mytable 索引为 wow 的元素是 ", mytable["wow"])				--mytable 索引为 wow 的元素是 修改前

-- alternatetable和mytable的是指同一个 table
alternatetable = mytable

print("alternatetable 索引为 1 的元素是 ", alternatetable[1])		--alternatetable 索引为 1 的元素是 lua
print("mytable 索引为 wow 的元素是 ", alternatetable["wow"])		--mytable 索引为 wow 的元素是 修改前

alternatetable["wow"] = "修改后"

print("mytable 索引为 wow 的元素是 ", mytable["wow"])				--mytable 索引为 wow 的元素是 修改后

-- 释放变量
alternatetable = nil
print("alternatetable 是 ", alternatetable)							--nil

-- mytable 仍然可以访问
print("mytable 索引为 wow 的元素是 ", mytable["wow"])				--修改后

mytable = nil
print("mytable 是 ", mytable)										--nil
