# scope gate

## when scope close
> 每个关键字都是一个作用域门

- 类定义 (class)
- 模块定义 (module xxx)
- 方法 (def my_method)

## global var
- $global_var = 124;
- 全局变量可以在任何作用域门中调用到。

## 区别
- class/module 里的代码会被立即执行
- def 只有在方法调用的时候才会执行

## 用方法代替 class/def 就可以 cross the gate
- 方法代替作用域门，就可以让变量从一个作用域看到另一个作用域中的变量
- 这种技巧称为：嵌套方法作用域 或 —— 扁平化作用域

## replacer tricks
- class - > Class.new
- module - > Module.new
- def -> define_method










