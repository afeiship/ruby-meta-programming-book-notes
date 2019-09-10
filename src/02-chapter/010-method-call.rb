class MyClass
  def my_method
    puts "from my_thod()"
  end
end

class MySubClass < MyClass
end

obj = MySubClass.new
obj.my_method

p MySubClass.ancestors

# ruby ./src/02-chapter/010-method-call.rb
