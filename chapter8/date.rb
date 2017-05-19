require 'date'

# puts Date.parse("April 24 1705").england.strftime("%B %d %Y")

puts "today: #{Date.today}"

# d = Date.new("06/22/1997")
puts "June 22, 1997 was a #{Date.parse("June 22 1997").strftime("%A")}"
