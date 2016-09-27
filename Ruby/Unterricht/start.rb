class Player

	def initialize(name, health=100)
		@name = name
		@health = health
	end

	def to_s
		"#{@name} hat Gesundheitsweirt: #{@health}"
	end

	def w00t
		@health += 10
		#@health = @health + 10
	end
	def blame
		@health -= 10
	end
end

player1 = Player.new("Janz", 5000)
puts player1
player1.w00t
puts player1

player2 = Player.new("Schmidt")
puts player2
player2.blame
puts player2
