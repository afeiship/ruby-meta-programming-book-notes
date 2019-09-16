my_var = "Success"
MyClass = Class.new do
  puts "#{my_var} in class defination"

  define_method :my_method do
    puts "#{my_var} in method defination"
  end
end

obj = MyClass.new
obj.my_method

# ruby src/04-chapter/005-scope-gate.rb
