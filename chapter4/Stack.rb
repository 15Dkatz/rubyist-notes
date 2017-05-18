module Stacklike
  def stack
    # the ||= "or-equals" operator only assigns the variable to the expression
    # on the right if the variable is still nil or false
    # if the variable is valid, then it returns that variable instead.
    @stack ||= []
  end

  def add_to_stack(obj)
    stack.push(obj)
  end

  def take_from_stack
    stack.pop
  end
end

class Stack
  include Stacklike
end

s = Stack.new

s.add_to_stack("one")
s.add_to_stack("two")

puts s.stack


# another class that is Stacklike, CargoHold
class CargoHold
  include Stacklike
  def load_and_report(obj)
    print "Loading object "
    puts obj.object_id #object_id is within the Object class, so all objects have the object_id message

    add_to_stack(obj)
  end

  def unload
    take_from_stack
  end
end

class Suitcase
end

ch = CargoHold.new
sc1 = Suitcase.new
sc2 = Suitcase.new
ch.load_and_report(sc1)
ch.load_and_report(sc2)
puts "The first suitcase off the plane is: #{ch.unload.object_id}"
