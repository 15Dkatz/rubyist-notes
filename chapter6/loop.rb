puts "loop"
n = 1
loop do
  puts n
  n = n + 1
  break if n > 9
end

puts "while"
n = 1
while n < 10
  puts n
  n = n + 1
end

puts "until"
n=1
until n > 10
  puts n
  n = n + 1
end

puts "for"
a = [1, 2, 3, 4]
for num in a
  puts num
end

puts "a block call being passed to a method, array.map, that has its own yield"
array = [1, 2, 3, 4]
puts(array.map{|n| n * 10})

puts "Times"
5.times { puts "printing 5 times" }

puts "Custom times"
class Integer
  def my_times
    c = 0
    until c == self
      yield(c)
      c+=1
    end
    self
  end
end

5.my_times { |i| puts "I'm on iteration #{i}!" }

puts "a block call within the each method"
array.each {|e| puts "The block just got handed #{e}"}


class Array
  def my_map
    c = 0
    acc = []
    until c == size
      acc << yield(self[c])
      c += 1
    end
    acc
  end
end

puts "a block call with a custom my_map method within the Array class"
puts a.my_map {|n| n*8 }
