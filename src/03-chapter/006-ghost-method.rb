# https://blog.chh.tw/posts/ruby-ghost-method-and-dynamic-proxy/

class SourceData
  def initialize(name, email, location)
    @name = name
    @email = email
    @location = location
  end

  def get_name
    @name
  end

  def get_email
    @email
  end

  def get_location
    @location
  end
end

class User
  def initialize(source_data)
    @source_data = source_data
  end

  def method_missing(name, *args)
    is_respond = @source_data.respond_to?("get_#{name}")
    if is_respond
      @source_data.send("get_#{name}")
    else
      #  OR YOU CAN Call SUPER `super`
      puts "NO METHOD!"
    end
  end

  # Make sure respond_to? method worked!
  def respond_to_missing?(method, include_private = false)
    @source_data.respond_to?("get_#{method}") || super
  end
end

data = SourceData.new("chh", "user@example.tw", "Taiwan")
user = User.new(data)

puts user.name     # => chh
puts user.email    # => user@example.tw
puts user.location # => Taiwan
puts user.respond_to?("name")
puts user.respond_to?("aaa")
