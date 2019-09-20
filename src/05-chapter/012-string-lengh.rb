class String
  alias_method :len, :length

  def length
    len > 5 ? "long" : "short"
  end
end

puts "abc".length
