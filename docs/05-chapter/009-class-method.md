# class method
- 类方法

```rb
class MyClass
    class << self
        def sayHi
            puts "hi";
        end
    end
end
```

## 三种语法
```rb
def MyClass.my_method
end

class MyClass
    def self.my_method
    end
end

class MyClass
    class << self
        def my_method
        end
    end
end
```
