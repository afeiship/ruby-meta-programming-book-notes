# inside the object model

```rb
class MyClass
    def my_method
        @v = 1
    end
end

# 实例化
obj = MyClass.new
p obj.class
```

## 实例变量
```rb
# 这里  ruby 比较特别，my_method 如果没有调用，下面的方法则没有值。
obj.my_mehthod
obj.instance_variables
```

## 方法
```rb
# 查找自己定义的方法 my_method
obj.methods.grep(/my/)
```

## 关于方法、变量
- my_method 是 MyClass 的一个实例方法
- 只有 MyClass 的实例才可以调用他
- 总结一下：
  - 一个对象的`实例变量`存在于`对象本身`之中
  - 一个对象的`方法`则存在`于对象自身的类`中
  - 这就是一个对象共享方法，但并不共享实例的原因

```rb
String.instance_methods == 'abc'.methods    # true
String.methods == "abc".methods             # false
```
