# method-call
方法调用


## 步骤
1. 找到这个方法，称为 method lookup
2. 执行这个方法，需要用到 self

## method lookup

## 接收者 receiver
- 调用方法所在的对象
  ```rb
  my_string.reverse();
  # my_string 就是这个 接收者
  ```
## 祖先链 ancestors chain
1. 一个类先到到其超类
2. 依次向上查找，直到找到 BasicObject 类
3. 这个过程经历的路径就是 祖先链，这个过程可能包含有模块(暂时先忽略)


```rb
class MyClass
  def my_method
    puts "from my_thod()"
  end
end

class MySubClass < MyClass
end

obj = MySubClass.new
obj.my_method

p MySubClass.ancestors

# ruby ./src/02-chapter/010-method-call.rb
# [MySubClass, MyClass, Object, Kernel, BasicObject]
```

1. my_method 先找到 receiver obj
2. Obj 所属的类 MySubClass 有没有这个方法 my_method
3. 如果没有就在其祖先链上去查找： `[MySubClass, MyClass, Object, Kernel, BasicObject]`
4. 直到找到这个方法为止