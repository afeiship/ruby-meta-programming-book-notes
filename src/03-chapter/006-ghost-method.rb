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
    @source_data.send("get_#{name}")
  end
end

data = SourceData.new("chh", "user@example.tw", "Taiwan")
user = User.new(data)

puts user.name     # => chh
puts user.email    # => user@example.tw
puts user.location # => Taiwan
puts user.aaa
