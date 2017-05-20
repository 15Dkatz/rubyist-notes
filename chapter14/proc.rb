# p = Proc.new {|x| puts x.upcase }

# %w{ David Katz }.each(&p)

class Person
  attr_accessor :name
  def self.to_proc
    Proc.new {|person| person.name.upcase}
  end
end

d = Person.new
d.name = "david"

puts [d].map(&Person)
