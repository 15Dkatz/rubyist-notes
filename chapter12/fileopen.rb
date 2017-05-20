File.open("records.txt") do |f|
  while record = f.gets
    name, country, talent = record.chomp.split('|')
    puts "#{name} from #{country}, is a vocal #{talent}"
  end
end
