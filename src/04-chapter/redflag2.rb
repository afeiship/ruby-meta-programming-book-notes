def setup(&block)
  @setups << block
end

def event(description, &block)
  @events << { :description => description, :condition => block }
end

@setups = []
@events = []

load "src/04-chapter/018-events.rb"

@events.each do |event|
  @setups.each do |setup|
    setup.call
  end
  puts "ALERT: #{event[:description]}" if event[:condition].call
end

# ruby src/04-chapter/redflag2.rb
