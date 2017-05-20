require 'pathname'
path = Pathname.new("/usr/local/var")
path.ascend do |dir|
  puts "Next level up #{dir}"
end
