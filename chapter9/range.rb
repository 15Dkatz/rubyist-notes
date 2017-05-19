for n in 1..3
  puts "inclusive: #{n}"
end

puts
for x in 1...3
  puts "exclusive: #{x}"
end

puts
c = 1..4
puts c.cover? 2
