# n = 0
# a = Array.new(3) { n += 1; n * 10 }
# puts a
#
# string = "Arrayify me"
# def string.to_ary
#   split(//)
# end

# puts Array(string)

b = ["red", "orange", "yellow", "purple"]
b[1, 3] = "a", "b", "c"
puts b
