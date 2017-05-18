class Person
  def set_name(new_name)
    @name = new_name
  end

  def get_name
    return @name
  end
end

david = Person.new
david.set_name("David")
puts david.get_name
