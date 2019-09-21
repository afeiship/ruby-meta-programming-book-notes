module StringRefinement
  refine String do
    def length
      # 这里不是 self
      super > 5 ? "long" : "short"
    end
  end
end

using StringRefinement

puts "War and Peace".length
puts "War".length
