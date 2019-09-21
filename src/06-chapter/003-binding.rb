class MyClass
  def my_method
    @x = 1
    binding
  end
end

b = MyClass.new.my_method

puts eval "@x"
puts eval "@x", b

# ruby src/06-chapter/003-binding.rb
