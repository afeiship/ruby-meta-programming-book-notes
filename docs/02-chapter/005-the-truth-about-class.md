# the truth about class
对象模型最重要的知识：类本身也是对象

```rb
Class.instance_methods(false)

# allocate 是 new 的支撑方法
# superclass 是表示，当前类的超类(父类)
=> [:allocate, :superclass, :new]
```

## superclass
```rb
Array.superclass        # Object
Object.superclass       # BasicObject
BasicObject.superclass  # nil
```
