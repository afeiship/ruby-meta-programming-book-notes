def add_method_to(aclass)
  aclass.class_eval do
    def sayHi
      "hello"
    end
  end
end

add_method_to String

puts "abc".sayHi

# ruby src/05-chapter/002-class_eval.rb
