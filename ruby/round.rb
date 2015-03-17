class Round
	attr_reader :loser_movements
	attr_accessor :winner, :players_movement

	def initialize()		
		@players_movement = {}
		@winner
	  	@loser_movements = {'Spock' => ['Lizard','Paper'],
					'Lizard' => ['Rock','Scissors'],
					'Scissors' => ['Rock','Spock'],
					'Paper' => ['Scissors','Lizard'],
					'Rock' => ['Paper','Spock']}
	end

	def who_wins?
		@winner = 'User'

		if user_lost?			
			@winner = 'Computer'
		elsif @players_movement['User'] == @players_movement['Computer']
			@winner = 'Draw'
		end

		return @winner
	end

	private
	def user_lost?
		@loser_movements[@players_movement['User']].include? @players_movement['Computer']
	end
end