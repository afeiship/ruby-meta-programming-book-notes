class MyClass
  def initialize(x, y)
    @x, @y = x, y
  end
end

obj = MyClass.new(1, 2)
obj.instance_exec(3) do |arg|
  puts arg * (@x + @y)
end

# ruby src/04-chapter/007-instance_exec.rb
