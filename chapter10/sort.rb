puts ["2", 1, 5, "-1", "4"].sort {|a, b| a.to_i <=> b.to_i }
puts
puts ["2", 1, 5, "-1", "4"].sort_by {|a| a.to_i }
