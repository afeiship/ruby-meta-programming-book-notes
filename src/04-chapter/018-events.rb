setup do
  puts "setting up sky"
  @sky_height = 100
end

setup do
  puts "setting up mountains"
  @mountain_height = 200
end

event "the sky is falling" do
  @sky_height < 300
end

event "it's getting closer" do
  @sky_height < @mountain_height
end

event "hoops ... to late" do
  @sky_height = 0
end
