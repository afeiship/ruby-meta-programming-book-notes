module Kernel
  def echo(msg)
    puts msg
  end
end

echo "hello world!"

require "awesome_print"

hash = { name: "fei", age: 108 }

p hash
ap hash
