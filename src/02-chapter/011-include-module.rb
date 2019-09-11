module M1
  def my_method
    "M1#my_mehod()"
  end
end

class C
  include M1
end

class D < C
end

# [D, C, M1, Object, Kernel, BasicObject]
p D.ancestors
