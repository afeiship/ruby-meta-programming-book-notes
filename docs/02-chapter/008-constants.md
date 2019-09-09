# constants


## defination
任何以大写字母开头的就叫常量。
常量修改的时候会提示 waring，但实际上是可以被修改成功的。


```rb
MyConst1 = 123
MyConst1 = 234
puts MyConst1
```

## 常量 vs 变量
- 作用域不同
- 像文件系统一样组织代码，不同的层级下可以有同名的常量

```rb
module MyModule
    MyConstant = 'Outer const'
    class MyClass
        MyConstant = 'Inner const'
    end
end
```

## 常量的访问
```rb
module M
    class C
        X = 'a const'
    end
    puts C::X
end

puts M::C::X
```

### 层级较深，可以通过 根路径来访问
```rb
Y = 'Root const'

module M
    Y = 'inner const'
    puts ::Y
end
```