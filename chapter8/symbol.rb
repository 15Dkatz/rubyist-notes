# "a".to_sym # returns :a

puts " string abc object id: #{"abc".object_id}"
puts " string abc object id: #{"abc".object_id}"
puts " symbol abc object id: #{:abc.object_id}"
puts " symbol abc object id: #{:abc.object_id}"

puts "All symbols size: #{Symbol.all_symbols.size}"

# sending the upcase symbol to the abc string object
puts "abc".send(:upcase)

# hashes
d_hash = { :name => "David", :age => 19 }
puts d_hash[:age]

s_hash = { name: "Sam", age: 20 }
puts s_hash[:name]
