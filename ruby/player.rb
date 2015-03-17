class Player
	attr_reader :name
	attr_accessor :last_movement, :wins
	
	def initialize(name)
		@name = name
		@last_movement
		@wins = 0
	end

	def is_winner_of_the_game
		wins == 3 ? true : false
	end		
end