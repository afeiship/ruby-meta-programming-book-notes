# include/extend class


```rb
module MyModule
    def my_method
    end
end

class MyClass
    class << self
        # include 只能得到实例方法
        include MyModule
    end
end

# 与上面等效
class MyClass
    extend MyModule
end
```