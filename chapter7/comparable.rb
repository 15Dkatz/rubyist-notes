class Bid
  include Comparable
  attr_accessor :estimate
  def <=>(other_bid)
    # if self.estimate < other_bid.estimate
    #   -1
    # elsif self.estimate > ther_bid.estimate
    #   1
    # else
    #   0
    # end
    self.estimate <=> other_bid.estimate
  end
end

bid100 = Bid.new.estimate = 100
bid105 = Bid.new.estimate = 200

puts "bid100 > bid105 ? #{bid100 > bid105}"
