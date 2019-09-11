module M1
  def my_method
    "M1#my_mehod()"
  end
end

class C
  prepend M1
end

class D < C
end

# [D, M1, C, Object, Kernel, BasicObject]
p D.ancestors

# ruby src/02-chapter/012-prepend-module.rb
