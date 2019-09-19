# ruby class
- 在 ruby 里，使用 class关键字，并非是在指定对象未来的行为方式，相反，实际上是在运行代码
  ```rb
  class MyClass
    puts "hello class!"
  end
  ```
- 类，只是一个增强的模块
- 类定义，也会返回最后一条语句
  ```rb
  class MyClass
    self
  end
  ```