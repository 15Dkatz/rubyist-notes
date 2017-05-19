require 'set'

players = ["Sc", "Kd", "Kt", "Dg", "Zp"]
player_set = Set.new(players) {|player| player.upcase}
puts player_set.to_a
