class Round
	attr_reader :loser_movements
	attr_accessor :user_movement, :computer_movement, :winner

	def initialize()		
		@user_movement
		@computer_movement
		@winner
	  	@loser_movements = {'Spock' => ['Lizard','Paper'],
					'Lizard' => ['Rock','Scissors'],
					'Scissors' => ['Rock','Spock'],
					'Paper' => ['Scissors','Lizard'],
					'Rock' => ['Paper','Spock']}
		@winning_messaages = {'User'=>'You Win',
  						'Computer' => 'You Lost',
  						'Draw' => 'Draw'}
	end

	def who_wins?
		@winner = 'User'

		if user_lost?			
			@winner = 'Computer'
		elsif @user_movement == @computer_movement
			@winner = 'Draw'
		end

		return @winner
	end

	def get_winning_message
		@winning_messaages[@winner]
	end
	private
	def user_lost?
		@loser_movements[@user_movement].include? @computer_movement
	end
end