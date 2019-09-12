class MyClass
  def my_method(msg)
    puts msg
  end

  private

  def sayHi
    puts "hi"
  end
end

obj = MyClass.new
obj.my_method "hello1"

# call public_method
obj.send(:my_method, "hello2")

# can call private method:
obj.send(:sayHi)
# ruby src/03-chapter/002-dynamic-call-method.rb
