# prepend method


```rb
module ExplictString
    def length
        super > 5 ? 'long' : 'short'
    end
end

String.class_eval do
    prepend ExplictString
end

## 或者用这种方式
class String
  prepend ExplictString
end
```