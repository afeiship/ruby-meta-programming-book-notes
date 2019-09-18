class MyClass
  def my_method(name)
    puts "hello #{name}"
  end
end

obj = MyClass.new
# 转化为 Method
method1 = obj.method :my_method

# 证明他是 Method
puts method1.class
puts method1.class.superclass

# 调用它
method1.call("test")

# ruby src/04-chapter/016-methods.rb
