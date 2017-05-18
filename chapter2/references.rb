def change_string(str)
  str.replace("replaced string content!")
end

s = "original string content!"
puts "Original s: #{s}"

change_string(s)

puts "Changed  s: #{s}"

puts "Freezing s (permanently)"
s = "Frozen"
s.freeze
change_string(s);
