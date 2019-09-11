# prepend module
> 以 prepend 方式把 M1 加到原型链上去

```rb
module M1
  def my_method
    "M1#my_mehod()"
  end
end

class C
  prepend M1
end

class D < C
end

p D.ancestors
```