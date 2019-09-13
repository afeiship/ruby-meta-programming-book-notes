
# introspection refactor 
```rb
require_relative "./data_source.rb"

class Computer
  def initialize
    @ds = DataSource.new
    methods = @ds.methods.grep(/^get_(.*)_info/) do
      Computer.define_component $1
    end
  end

  def self.define_component(name)
    define_method(name) do
      @ds.send("get_#{name}_info")
    end
  end
end
```

## dynamic define method
```rb
define_method(name) do
    @ds.send("get_#{name}_info")
end
```

## ref static method
```rb
Computer.define_component $1
```