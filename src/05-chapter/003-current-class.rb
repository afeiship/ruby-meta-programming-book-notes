class MyClass
  def method_one
    def method_two
      puts "hello"
    end
  end
end

obj = MyClass.new
obj.method_one
obj.method_two

# ruby src/05-chapter/003-current-class.rb
