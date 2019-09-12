# dynamic call method

## send
```rb
class MyClass
    def my_method(msg)
        puts msg
    end
end

obj = MyClass.new
obj.my_method "hello1"
obj.send(:my_method,"hello2" )
```

## send 好处
- 方法被称为 dynamic dispatch
- 可以把方法变成变量

## send 可能 调用 private 方法
- public_send 只会调用 public 方法