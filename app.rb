require "bundler"
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("José")
puts "#{player1.name} vous avez #{player1.life_points} points"
puts player1.show_state
puts player1.gets_damage(5)
puts player1.show_state
puts player1.gets_damage(2)
puts player1.show_state
puts player1.gets_damage(3)
puts player1.show_state


player2 = Player.new("Chris")
puts "#{player2.name} vous avez #{player2.life_points} points"

puts "Nombre de joueur actuelle #{Player.count}"