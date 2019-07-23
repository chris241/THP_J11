class Player
	attr_accessor :name, :life_points, :sous
	@@count = 0
	def initialize(name, life_points = 10)
		@name= name
		@life_points = life_points 
		@@count += 1
	end
	def show_state
		puts "#{name} a #{life_points} points de vie"
	end

	def gets_damage(sous)
		@sous = sous
		@life_points -= @sous
		if @life_points == 0
			puts "****************le joureur #{name} a été tué!!!*********************"
		end
	end
	def self.count
		return @@count
	end
end
