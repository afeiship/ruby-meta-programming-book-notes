module M
  class C
    X = "a const"
  end

  puts C::X
end

puts M::C::X

Y = "Root const"

module M
  Y = "inner const"
  puts ::Y
end

# ruby ./src/02-chapter/004-visite-a-const.rb
