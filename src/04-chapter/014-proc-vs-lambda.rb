# ======= lambda start ========
def double(callable_object)
  callable_object.call * 2
end

p1 = lambda { puts "lambda"; return 10 }
p2 = proc { puts "proc"; return 10 }

puts double(p1)
puts double(p2)

# ======= lambda end ========

## ruby src/04-chapter/014-proc-vs-lambda.rb
