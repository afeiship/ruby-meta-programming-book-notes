def event(name)
  puts "ALERT: #{name}" if yield
end

Dir.glob("src/04-chapter/*event.rb").each do |file|
  load file
end

# ruby src/04-chapter/redflag.rb
