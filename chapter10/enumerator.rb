a = (1..5).to_a
e = Enumerator.new do |y|
  total = 0
  until a.empty?
    total += a.pop
    y << total
  end
end

puts e.take(2)
puts
puts a
puts
puts e.to_a
puts
puts a

NOTES = %w{ c c# d d# e f f# g a a# b }
module Music
  class Scale
    def play
      NOTES.each {|note| yield note}
    end
  end
end

scale = Music::Scale.new
# create an enumerator for the Scale#play
enum = scale.enum_for(:play)
# this enum than has access to all the enumerator methods: map, select, sort, and more.
puts enum.map{|note| note.upcase}

puts
# turning the play method to an actual enumerator
def scale.play
  NOTES.to_enum
end

# demonstrate the power of with_index
scale.play.with_index(1) {|note, i| puts "Note #{i}: #{note}"}

puts
# lazy enumerator, to select from an infinite range
puts (1..Float::INFINITY).lazy.select {|n| n%25==0 }.first(20)
