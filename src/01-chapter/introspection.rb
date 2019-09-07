class Greeting
  def initialize(text)
    @text = text
  end

  def welcome
    @text
  end
end

my_object = Greeting.new("Hello")

# class 你的 class 是什么?
p my_object.class

# instance_methods 你有哪些实例方法 (不要继承来的)
p my_object.class.instance_methods(false)

# instance_variables
p my_object.instance_variables
