inc = Proc.new do |arg|
  arg += 1
end
p inc.class # Proc
p inc.class.superclass # Object
p inc.call(5)
# ruby src/04-chapter/011-proc-object.rb

dec = lambda do |arg|
  arg -= 1
end

pow = proc do |arg|
  arg = arg * arg
end

p dec.class
p pow.class
p dec.call(5)
p pow.call(4)
