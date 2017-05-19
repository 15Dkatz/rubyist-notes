class Colors
  include Enumerable
  def each
    yield "red"
    yield "orange"
    yield "yellow"
  end
end

r = Colors.new
r.each do |c|
  puts "Next color: #{c}"
end

colors = %w{ red orange yellow green blue }
# for each color in the colors array, use the size to point to the color
puts colors.group_by {|color| color.size}

class Person
  attr_accessor :age

  def initialize(options)
    self.age = options[:age]
  end

  def teenager?
    self.age > 12 && self.age < 20
  end
end

people = 10.step(25,3).map {|i| Person.new(:age => i)}
teens = people.partition {|person| person.teenager? }
puts teens
puts "#{teens[0].size} teens; #{teens[1].size} non-teens."

puts [1,2,3,4,5].inject(0) {|acc,n| acc+n}

nums = (1..4).to_a
puts nums.map {|n| n*4}
