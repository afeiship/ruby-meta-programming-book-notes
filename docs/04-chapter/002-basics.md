# basics

```rb
def a_method(a, b)
  a + yield(a, b)
end

res = a_method(2, 3) do |a, b|
  (a + b) * 3
end

p res  # 17
```

## yield 
## Kernel#block_given?
- 判断当前方法调用是否包含代码块