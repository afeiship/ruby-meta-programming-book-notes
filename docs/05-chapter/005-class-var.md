# class var
- 类变量


```rb
class MyClass
  @@value = 123
  def self.value
    @@value
  end
end
```

## 类方法的实质
- 实际上是一个类的 singleton_method

```rb
def str.method1 
  puts 'say'
end
```