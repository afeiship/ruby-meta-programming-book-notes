# MonkeyPatch
- 添加方法的时候，会覆盖已经有的方法，所以需要慎重添加

```rb
class Array
    # 这个就是一个典型的，因为 Array 本身就有 replace 方法
    def replace
    end
end
```
