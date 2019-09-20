# string length


```rb
class String 
    alias :len, :length
    def length
        len > 5 ? 'long' : 'short'
    end
end
```