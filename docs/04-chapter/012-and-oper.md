# & 操作符

块就像是方法额外的匿名参数

## yield 的局限
- 想把这个块传给另一个方法
- 想把这个块转化为一个 Proc

```rb
class MyClass
  def match(a, b)
    yield(a, b)
  end

  def teach_match(a, b, &opr)
    puts "Let's do the match!"
    match(a, b, &opr)
  end
end

obj = MyClass.new
obj.teach_match(2, 3) do |x, y|
  puts x * y
end
```
