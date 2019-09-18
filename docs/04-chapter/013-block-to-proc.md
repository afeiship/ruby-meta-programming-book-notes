# block to proc
- 类似于返回一个函数(Javascript里的感觉)

```rb
def my_method(&the_proc)
  the_proc
end

res = my_method do |name|
  "hello #{name}"
end

puts res.call("Bill")
```
