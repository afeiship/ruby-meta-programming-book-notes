# proc object
> 绝大多数东西是对象，但块不是

```rb
inc = Proc.new do |arg|
  arg += 1
end

# 延时执行(Deferred Evaluation)
p inc.call(5)
```

## 延时执行(Deferred Evaluation)
```rb
inc.call(5)
```

## 其它方法
- Kenel#proc
- Kenel#lambda

```rb

dec = lambda do |arg|
  arg -= 1
end

pow = proc do |arg|
  arg = arg * arg
end

p dec.class  # Proc
p pow.class  # Proc
p dec.call(5) # 4
p pow.call(4) # 16
```