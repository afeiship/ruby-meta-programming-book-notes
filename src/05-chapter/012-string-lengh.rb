class String
  alias_method :len, :length

  def length
    len > 5 ? "long" : "short"
  end
end

puts "abc".length
puts "abcdef".length

puts "abc".len
puts "abcdef".len

# ruby src/05-chapter/012-string-lengh.rb
