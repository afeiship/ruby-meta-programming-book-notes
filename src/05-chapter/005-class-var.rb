class MyClass
  @@value = 123
  def self.value
    @@value
  end
end

puts MyClass.class_variables
puts MyClass.value

# ruby src/05-chapter/005-class-var.rb
