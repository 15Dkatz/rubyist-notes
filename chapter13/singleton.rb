string = "I am a string"

# << accesses the singleton class
class << string
  def twice
    self + " " + self
  end
end

puts string.twice


class C
  def talk
    puts "Hi from original class!"
  end
end

module M
  def talk
    puts "hello from module!"
  end
end

c = C.new
c.talk
class << c
  include M
end
c.talk
