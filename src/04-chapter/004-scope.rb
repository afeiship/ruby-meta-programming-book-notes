v1 = 1

class MyClass
  v2 = 2
  p 1, local_variables

  def my_method
    v3 = 3
    p 2, local_variables
  end

  p 3, local_variables
end

obj = MyClass.new
obj.my_method
obj.my_method

p 4, local_variables
