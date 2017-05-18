$g = "global"

class C
  def examine_global
    puts $g
  end
end

c = C.new
c.examine_global


class D
  a = 5
  module M
    a = 4
    puts "a in C::M: #{a}"
  end
  puts "a in C: #{a}"
end

class E
  def x(value_for_a, recurse=false)
    a = value_for_a
    puts "a: #{a}"
    if recurse
      puts "Calling myself through recursion"
      x("Second value for a")
      puts "Recursion complete; here's a: #{a}"
    end
  end
end

e = E.new
e.x("First value for a", true)
