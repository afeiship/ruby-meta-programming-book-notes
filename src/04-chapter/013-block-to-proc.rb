def my_method(&the_proc)
  the_proc
end

res = my_method do |name|
  "hello #{name}"
end

puts res.call("Bill")

# ruby src/04-chapter/013-block-to-proc.rb
