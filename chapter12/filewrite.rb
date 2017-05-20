f = File.new("data.out", "w")
f.puts "David Katz, Software Engineer"
f.close

puts "After one write"
puts File.read("data.out")

puts
f = File.new("data.out", "a")
f.puts "Yukihiro Matsumoto, Ruby creator"
f.close

puts "After an append"
puts File.read("data.out")
