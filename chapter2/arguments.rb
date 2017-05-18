def two_or_more(a, b=[1, 2, 3], *c=)
  puts "I require two or more arguments, getting:"
  p a, b, c
end

two_or_more(1, 2, 3, 4, 5)

two_or_more(4);
