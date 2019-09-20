# string length


```rb
class String 
    alias_method :len, :length
    def length
        len > 5 ? 'long' : 'short'
    end
end
```

## 思想
- 定义别名
- 再重新定义方法