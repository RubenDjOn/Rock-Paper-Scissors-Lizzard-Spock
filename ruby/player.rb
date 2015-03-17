class Player
	attr_reader :name
	attr_accessor :movement, :wins
	
	def initialize(name)
		@name = name
		@movement
		@wins = 0
	end
end