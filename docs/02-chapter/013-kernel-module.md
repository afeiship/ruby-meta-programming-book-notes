# kernel module
- 一些方法可以到处调用，都来自于这个模块

## 查看 private instance-methods
- `Kernel.private_instance_methods`

## test 
- 自己实现一个简单的 echo 方法

```rb
module Kernel
  def echo(msg)
    puts msg
  end
end

echo "hello world!"
```

## 一个有趣的项目
```shell
gem install awesome_print
```

## awesome-usage
```rb
require "awesome_print"

hash = { name: "fei", age: 108 }

p hash
ap hash

## out puts
{:name=>"fei", :age=>108}
{
    :name => "fei",
     :age => 108
}
```