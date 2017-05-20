def return_test
  l = lambda { return }
  l.call
  puts "Here after a call of the lambda function. Will you reach the final string though?"
  p = Proc.new { return }
  p.call
  puts "This string is never reached though"
end

return_test

mult = ->(x, y) { x*y }
puts mult.call(3, 4)