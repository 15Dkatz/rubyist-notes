
# gets is the standard input


def continue()
  print "Exit the program? (y or n): "
  answer = gets.chomp
  case answer
  when "y"
    puts "Good-bye!"
    exit
  when "n"
    puts "OK, we'll continue"
    continue
  else
    puts "That's an unkown answer -- assuming you meant 'no'"
    continue
  end
end

continue()
