# dynamic definition

```rb
class MyClass
  # dynamic define method
  define_method :my_method do |arg|
    puts arg * 3
  end
end

obj = MyClass.new
obj.my_method 1
```