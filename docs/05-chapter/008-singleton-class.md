# singleton class
- 单件类

## 常规的方法调用
```rb
class MyClass
    def my_method
        "hello"
    end
end

obj = MyClass.new

# 调用 my_method 方法
obj.my_method
```

## 在 obj 上定义一个单件方法
```rb
def obj.my_singleton_method
    "hello singleton"
end
```

- obj 不是类，所以，`my_singleton_method` 不在 obj 上
- `my_singleton_method` 也不在 MyClass 里


## open singleton class
- Ruby有一种特殊的语法，如下
- 可以让你进入单件类的作用域
```rb
class << an_object
    self
end
```