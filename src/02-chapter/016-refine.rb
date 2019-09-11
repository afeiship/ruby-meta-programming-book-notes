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

#  ruby src/02-chapter/016-refine.rb
