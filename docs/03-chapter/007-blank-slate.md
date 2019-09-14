# blank slate
- 白板类


## 为什么我们需要这个白板类

```rb
my_computer = Computer.new(42, Ds.new)
my_computer.display  # nil
```

- 本来我们希望的是调用我们定义的 display 是走 method_missing 的逻辑
- 但是看一下 Object 的方法才知道，这上面就有这个 display 方法
  ```rb
  irb(main):001:0> Object.instance_methods.grep(/^disp/)
  # => [:display]
  ```
- 这下子，我们的类并没有走模板方法，而是走了真实的方法，这样就会造成与我们的预期不一致
- 总结，我们如果有这种 method_missing 的场景，可以不要直接继承 Object，而改为直接继承 BasicObject（实际上，这个是 Ruby 为我们准备的白板类）
   ```rb
   irb(main):002:0> BasicObject.instance_methods
    # => [:equal?, :!, :==, :instance_exec, :!=, :instance_eval, :__id__, :__send__]
   ```