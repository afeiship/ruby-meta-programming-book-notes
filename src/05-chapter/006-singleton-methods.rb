str = "just a string"

def str.title?
  self.upcase == self
end

puts str.title?
puts str.methods.grep(/title/)
puts str.singleton_methods

# ruby src/05-chapter/006-singleton-methods.rb
