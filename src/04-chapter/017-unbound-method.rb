module MyModule
  def my_method
    43
  end
end

my_method = MyModule.instance_method(:my_method)

# UnboundMethod
puts my_method.class

# ruby src/04-chapter/017-unbound-method.rb
