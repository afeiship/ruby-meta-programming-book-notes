POSSIBLE_VERBS = ["get", "post", "put", "delete"]
POSSIBLE_VERBS.each do |m|
  eval <<-end_eval
        def #{m}(path, *args, &block)
            r[path].#{m}(*args, &block)
        end
    end_eval
end
