# refine
- 解决打开类的全局问题

```rb
module StringExt
  refine String do
    def sayHi
      puts "hello world"
    end
  end
end

# "aaa".sayHi

## using in local but not global
using StringExt
"aaa".sayHi
```