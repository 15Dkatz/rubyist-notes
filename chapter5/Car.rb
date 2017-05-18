class Car
  # @@makes is now shared between all instances of the Car class
  @@makes = []
  # @@cars, hash, is now shares between all instances of the Car class
  @@cars = {}

  attr_reader :make

  def self.total_count
    # set total_count to 0 if it's still null
    @total_count ||= 0
  end

  def self.total_count=(n)
    @total_count = n
  end

  def self.add_make(make)
    unless @@makes.include?(make)
      @@makes << make
      @@cars[make] = 0
    end
  end

  def initialize(make)
    if @@makes.include?(make)
      @make = make
      @@cars[make] += 1
      self.class.total_count += 1
    end
  end

  def make_count
    @@cars[self.make]
  end
end

Car.add_make("Honda")
Car.add_make("Ford")
h = Car.new("Honda")
f = Car.new("Ford")
h2 = Car.new("Honda")

puts h.make_count
puts "Car total count: #{Car::total_count}"

class Sports < Car
end

s = Sports.new("Honda")

puts "Sports total count: #{Sports::total_count}"
