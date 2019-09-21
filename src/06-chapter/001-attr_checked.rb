module CheckedAttributes
  def self.included(base)
    puts "include #{base}"
    base.extend ClassMethods
  end

  module ClassMethods
    def attr_checked(attr, &validator)
      puts "attr checked inner"
      define_method "#{attr}=" do |value|
        raise "Invalid attr" unless validator.call(value)
        instance_variable_set("@#{attr}", value)
      end

      define_method "#{attr}" do
        instance_variable_get("@#{attr}")
      end
    end
  end
end

# usage
class Person
  include CheckedAttributes
  attr_checked :age do |v|
    v >= 18
  end
end

p1 = Person.new
p1.age = 19
p p1.age

# ruby src/06-chapter/001-attr_checked.rb
