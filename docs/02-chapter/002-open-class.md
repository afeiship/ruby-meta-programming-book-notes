# open-class

## class 关键字
- 如果类不存在，则创建这个类
- 如果类存在，则打开这个类，把你的代码带到这个类的作用域中，让你可以在里面定义方法


```rb
class String
    def to_alphanumeric
        gsub(/[^\s\w]/,'')
    end
end
```

## 证明只是打开，而不是复写了

```rb
3.times do
    class C
        puts "hello";
    end
end
```


## 查看是否有某关键字的方法
```rb
[].methods.grep(/rep/)
```