def recursive(x)
  return 1 if x < 4
  4 * recursive(x-1)
end

puts "4 " + recursive(4).to_s
puts "5 " + recursive(5).to_s
puts "6 " + recursive(6).to_s
puts "7 " + recursive(7).to_s
