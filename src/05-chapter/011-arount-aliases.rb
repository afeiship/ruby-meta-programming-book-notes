class MyClass
  def my_method
    puts "hello"
  end

  # 这个需要放在 def my_method 之后
  alias_method :m2, :my_method
end

obj = MyClass.new
obj.my_method
obj.m2

# ruby src/05-chapter/011-arount-aliases.rb
