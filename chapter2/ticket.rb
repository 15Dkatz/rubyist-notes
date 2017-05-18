ticket = Object.new

def ticket.date
  "01/02/03"
end

def ticket.venue
  "Town Hall"
end

def ticket.event
  "Mark Twain"
end

def ticket.seat
  "Second Balcony, row J, seat 12"
end

def ticket.price
  5.50
end

def ticket.available?
  false
end

puts ticket.available? ? "Ticket available" : "Ticket unavailable"

puts "This ticket is for: #{ticket.event}, at #{ticket.venue}"

request = "venue"

puts ticket.respond_to?(request) ? "#{request} request: #{ticket.send(request)}" : "No such information for #{request} available"

obj = Object.new
puts "The id of obj is #{obj.object_id}"
puts "The id of 100 is #{100.object_id}"
puts "The id of 100 is #{100.object_id}"
