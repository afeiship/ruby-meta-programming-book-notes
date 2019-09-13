class Laywer
  def method_missing(method, *args)
    puts "You Called a missing method"
    puts "method name:#{method}"
    puts "args: #{args}"
    puts "block?" if block_given?
  end
end

nick = Laywer.new
nick.send(:talk, 1, 2, 3) do
  # goes the code
  puts "block code"
end

# You Called a missing method
# method name:talk
# args: [1, 2, 3]
# ruby src/03-chapter/005-method-missing.rb
