# state_hash = { "California" => "CA", "New York" => "NY" }
# print "Enter the name of a state: "
# state = gets.chomp
# abbr = state_hash[state]
# puts "The abbreviation of #{state} is #{abbr}"

h = Hash[1, 2, 3, 4, 5, 6]
puts h

r = h.reject {|k,v| k % 3 == 0 }
puts r
