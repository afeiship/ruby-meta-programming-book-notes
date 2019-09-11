# self


- ruby 每一行代码都会在一个对象中被执行
- 这个对象即当前对象
- 当前对象可以用 self 表示，可以用 self 关键字进行访问
- 简单来讲：与 js 类似


## 如果没有调用任何对象
- self 是 main

## ruby 运行机制
- ruby 程序开始运行时，解释器会创建一个名为 main 的对象作为当前对象(即 self)
- 这个对象有时候被称为 top-level-context


## 类定义和 self
```rb
class MyClass
    self # MyClass
end
```