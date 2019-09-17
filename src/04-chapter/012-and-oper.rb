class MyClass
  def match(a, b)
    yield(a, b)
  end

  def teach_match(a, b, &opr)
    puts "Let's do the match!"
    match(a, b, &opr)
  end
end

obj = MyClass.new
obj.teach_match(2, 3) do |x, y|
  puts x * y
end
