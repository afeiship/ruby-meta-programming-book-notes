p1 = proc do |n1, n2|
  puts n1, n2
end

p2 = lambda do |n1, n2|
  puts n1, n2
end

puts "args length:", p1.arity, p2.arity

## proc will get nil args
puts p1.call(1, 2, 3)
puts p1.call(1, 2)
puts p1.call(1)

## `lambda` will caught error
# puts p2.call(1, 2)
# puts p2.call(1)

# ruby src/04-chapter/015-proc-vs-lamda-arity.rb
