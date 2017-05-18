class Ticket
  attr_accessor :venue
  def initialize(venue)
    @venue = venue
  end

  def ===(other_ticket)
    # self.venue calls the getter made by attr_accessor
    self.venue == other_ticket.venue
  end
end

ticket1 = Ticket.new("Town Hall")
ticket2 = Ticket.new("Bill Graham")
ticket3 = Ticket.new("Town Hall")

case ticket1
when ticket2
  puts "Ticket 1 shares locations with Ticket 2!"
when ticket3
  puts "Ticket 1 shares locations with Ticket 3!"
else
  puts "No match found"
end
