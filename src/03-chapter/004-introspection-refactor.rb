require_relative "./data_source.rb"

class Computer
  puts "000"

  def initialize
    puts "111"
    @ds = DataSource.new
    methods = @ds.methods.grep(/^get_(.*)_info/) do
      Computer.define_component $1
    end
  end

  def self.define_component(name)
    puts "222"
    define_method(name) do
      @ds.send("get_#{name}_info")
    end
  end
end

cp1 = Computer.new

## dynamic
cp1.cpu
cp1.memory
cp1.harddisk

# ruby src/03-chapter/004-introspection-refactor.rb
