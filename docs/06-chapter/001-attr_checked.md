# attr_checked
- 模拟 attr_accessor 来创建一个自己的类宏(class macro)

## Kernel#eval
- 从底层看，代码只是文本而已。

## basic usage(eval)
```rb
array = [10,20]
element = 30 
eval("array << element")
```