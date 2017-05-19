puts "testing 1 2 3 testing 4 5 6".scan(/\d/)
puts
puts "Ruby".split(//)

puts
s = "capitalize the first vowel".sub(/[aeiou]/) {|s| s.upcase}
puts s

puts
w = "capitalize every word".gsub(/\b\w/) {|s| s.upcase}
puts w
