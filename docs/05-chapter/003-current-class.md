# current class

- 不管程序处在哪个位置，总是存在一个当前对象：self
- 类似的，也总有一个当前模块存在
- 当定义方法时，该方法成为当前类的一个实例

## 当程序在顶层
- 当前类是 Object
- 所以，这个时候定义的方法，都会跑到 Object 上去
  ```rb
  def method1
    puts "hello method1"
  end

  ## 验证一下上面的观点：
  obj = Object.new
    => #<Object:0x00007ffc3996e5f0>
    irb(main):005:0> obj.method1
    hello method1
    => nil
  ```