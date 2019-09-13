# method missing

- ruby 编译器并不会检查你调用了一个并不存在的方法。


## basic format
```rb
def method_missing(method, *args)
    puts method
    puts args
end
```

## if has block
```rb
def method_missing(method, *args)
    puts method
    puts args
    puts "block?" if block_given?
end
```