# instance_exec 
> 与 eval 类似，支持传入参数


```rb
class MyClass
  def initialize(x, y)
    @x, @y = x, y
  end
end

obj = MyClass.new(1, 2)
obj.instance_exec(3) do |arg|
  puts arg * (@x + @y)
end
```