# with initialize
class Ticket
  def initialize(venue, date)
    @venue = venue
    @month, @day, @year = date.split('/')
  end

  def venue
    @venue
  end

  def date
    "#{@month}/#{@day}/#{@year}"
  end

  def date=(new_date)
    @month, @day, @year = new_date.split('/')
    if (@year.to_i < 100)
      puts "year less than 100"
      @year = @year.to_i + 2000
    end
  end
end

th1 = Ticket.new("Davies Symphony", "01/02/18")
# syntactic sugar to call the date setter
th1.date = "06/22/18"
puts "th1 date: #{th1.date}, venue: #{th1.venue}"
