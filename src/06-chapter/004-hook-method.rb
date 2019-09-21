# 004-hook-method

class String
  def self.inherited(supclass)
    puts "#{self} was inherted by #{superclass}"
  end
end

class MyString < String
end

# ruby src/06-chapter/004-hook-method.rb
