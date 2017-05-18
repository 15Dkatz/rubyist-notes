class Account
  attr_accessor :balance

  def initialize(amount=0)
    self.balance = amount
  end

  def +(x)
    self.balance += x
  end

  def -(x)
    self.balance -= x
  end

  def to_s
    balance.to_s
  end
end

a = Account.new(20)
a -= 5
a += 8
puts a

class Banner
  def initialize(text)
    @text = text
  end

  def to_s
    @text
  end

  def +@
    @text.upcase
  end
end

banner = Banner.new("Banner symbol")
puts +banner


def combine_names(first, last)
  "#{first} #{last}"
end

names = ["David", "Katz"]
puts combine_names(*names)
puts banner

class Person
  attr_accessor :name, :age, :email

  def to_ary
    [name, age, email]
  end
end

david = Person.new
david.name = "David"
david.age = 55
david.email = "david@gmail.com"

puts [].concat(david)
