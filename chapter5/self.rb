class C
  puts "Just started class C: "
  puts "self #{self}"
  module M
    puts "Nested module C::M:"
    puts "self #{self}"
  end
  puts "Back in the outer C level:"
  puts "self #{self}"
end

class C
  def x
    puts "Class C, method x:"
    puts self
  end
end

c = C.new
c.x
puts "that was a call to x by: #{c}"

obj = Object.new
def obj.singleton
  puts "self in obj.singleton: #{self}"
end
obj.singleton
puts "obj outside of singleton: #{obj}"


# if you call a method without a recevier, self is the default object
def no_dot
  puts "Called no_dot with no receiver"
end

no_dot

class C
  def x
    puts "This is method x"
  end

  def y
    puts "Method y will call x with no dot"
    x
  end
end

c = C.new
c.y

class C
  def show_var
    @v = "I am an instance variable initialized to a string"
    puts @v
  end

  @v = "Will the instance variable in show_var change? No."
end

C.new.show_var
