def define_methods
  shared = 0
  define_method :counter do
    shared
  end
  define_method :inc do |x|
    shared += x
  end
end

define_methods
p counter
inc(4)
p counter

# ruby src/04-chapter/005-flat-scope.rb
