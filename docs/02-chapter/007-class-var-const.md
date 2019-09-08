# class var const

```rb
class MyClass
end

# 实例化
obj1 = MyClass.new
obj2 = MyClass.new

my_class = MyClass
```

- MyClass/my_class 都指向同一个 Class 类实例的引用
- 唯一的区别在于：my_class 是一个变量；而 MyClass 是一个常量
- 换句话说：类不过是变量而已，只是类名是常量