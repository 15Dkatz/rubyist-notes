class Custom
  def instance_method
  end
end

puts "Public methods: "
c = Custom.new
puts c.public_methods

puts "Public instance methods: "
puts Custom.public_instance_methods
