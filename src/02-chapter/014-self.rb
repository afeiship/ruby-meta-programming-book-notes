class MyClass
  def test_self
    @val = 10
    my_method()
    self
  end

  def my_method
    @val = @val + 1
  end
end

obj = MyClass.new
p obj.test_self

# ruby src/02-chapter/014-self.rb
# #<MyClass:0x00007f8b778710b8 @val=11>
