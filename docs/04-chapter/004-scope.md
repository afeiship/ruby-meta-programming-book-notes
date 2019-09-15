# scope
- 作用域

## Kernal#local_variables
- 可以用来查看当前 scope 中有哪些 local variables


```rb
v1 = 1

class MyClass
  v2 = 2
  local_variables #[:v2]

  def my_method
    v3 = 3
    ocal_variables #[:v3]
  end

  local_variables #[:v2]
end


obj = MyClass.new
obj.my_method
obj.my_method

local_variables #[:obj,:v1]
```