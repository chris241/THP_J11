class Player

	attr_accessor :name, :life_points
	@@count = 0
	def initialize(player)
		@name= player
		@life_points = 10
		@@count += 1
	end

	#Affiche  le nombre de vite du joueur 
	def show_state
		puts "#{name} a #{life_points} points de vie"
	end

	def self.count
		return @@count
	end

	def gets_damage(damage_received)
		@life_points -= damage_received
		if @life_points <= 0
			puts "Le joureur #{@name} a été tué"
		end
	end

	# Dommage qu'on inflige à l'autre joueur
	def compute_damage
		return rand(1..6)
	end
	
	# Attaque sur l'autre joueur
	def attacks (player)
		puts "le joueur #{@name} attaque le joueur #{player.name}"
		damage = compute_damage
		puts "Il lui inflige #{damage} points de dommages"
		player.gets_damage(damage)

	end
	
end
