module ExplictString
  def length
    super > 5 ? "long" : "short"
  end
end

## 或者用这种方式
# String.class_eval do
#  prepend ExplictString
# end

class String
  prepend ExplictString
end

puts "War and Peace".length
puts "War".length

# ruby src/05-chapter/014-prepend-method.rb
