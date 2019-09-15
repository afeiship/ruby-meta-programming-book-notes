def a_method
  return yield if block_given?
  "No block"
end

res1 = a_method
res2 = a_method do
  "hello"
end

p res1
p res2

# ruby src/04-chapter/002-block-given.rb
