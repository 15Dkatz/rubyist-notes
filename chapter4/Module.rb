module ModuleOne
  def say_hello
    puts "Hello"
  end
end

class ModuleTestingClass
  include ModuleOne
end

mt = ModuleTestingClass.new
mt.say_hello

# do the Ruby projects from the Any.do list after finishing this book!
