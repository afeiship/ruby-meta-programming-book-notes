class MyClass
  def initialize
    @v = 1
  end

  def val
    @v
  end
end

obj = MyClass.new
obj.instance_eval do
  @v = 100
end

p obj.val  #100

# ruby src/04-chapter/006-instance_eval.rb
