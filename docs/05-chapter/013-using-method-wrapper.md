# using method wrapper
- 方法调用

```rb
module StringRefinement
    refine String do
        def length
            super > 5 ? 'long' : 'short'
        end
    end
end
```