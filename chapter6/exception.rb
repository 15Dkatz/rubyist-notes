# print "Enter a number: "
# n = gets.to_i
# begin
#   result = 100 / n
# rescue
#   puts "Your number didn't work. Was it zero?"
#   exit
# end
# puts "100/#{n} is #{result}"

def exception_method(x)
  raise ArgumentError, "I need a number under 10" unless x < 10
end

begin
  exception_method(11)
rescue ArgumentError => e
  puts "That number was not acceptable."
  puts "Exception backtrace"
  puts e.backtrace
  puts "Exception message"
  puts e.message
end


class MyNewException < Exception
  def message
    "custom message"
  end
end

begin
  puts "Will raise a custom exception"
  raise MyNewException
rescue MyNewException => e
  puts "Just was rescued from #{e}"
  puts e.backtrace
  puts e.message
end
