# class superclass is module

```rb
Class.superclass    # => Module
```

## Class 与 Module
- 区别就在于 [:allocate,:superclass,:new] 这三个方法
- 他们其实很接近
- 保留的原因是：获利代码的清晰性
- 如果你希望自己的代码包含(include)到别的代码中，就应该使用模块




