# showing off attr_reader and attr_writer

class Ticket
  # declare constants in a class with CAPS
  VENUES = ["Bill Graham", "Convention Center"]
  # defines the getters for venue and date
  attr_reader :venue, :date
  # defines teh setters for date
  attr_writer :date
  # defines the getter and setter for price
  attr_accessor :price
  def initialize(venue, date)
    if VENUES.include?(venue)
      @venue = venue
    else
      raise ArgumentError, "Uknown venue #{venue}"
    end
    @date = date
    @price = 100
  end

  def to_s
    "Venue: #{@venue}, Date: #{@date}, Price: #{@price}"
  end
end

th = Ticket.new("Bill Graham", "02/03/2018");
th.price=(200)

puts th

# adding a singleton method
def Ticket.most_expensive(*tickets)
  # why does the & sign work?
  tickets.max_by(&:price)
end

th2 = Ticket.new("Bill Graham", "03/04/2020")
th2.price = 400

highest = Ticket.most_expensive(th, th2);
puts "#{highest} - highest"


# puts "Raise an error for this wrong venue"
# th3 = Ticket.new("BG", "05/05/2025")


# Further constants example
puts Math::PI
