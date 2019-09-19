# class_eval
- 在不知道类名的情况下，打开类。


```rb
def add_method_to(aclass)
    aclass.class_eval do
        def sayHi
            "hello"
        end
    end
end
```