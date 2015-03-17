class Printer
	def initialize
		@round_winning_messages = {'User'=>'You Win',
	  						'Computer' => 'You Lost',
	  						'Draw' => 'Draw'}
		@game_winning_messages = {'User' => 'You Win the Game',
							 'Computer'=> 'Computer Wins the Game'}
	end

	def print_winning_message(round_winner, game_winner)	
	  	message = @round_winning_messages[round_winner]
	  	if game_winner
	  		message = @game_winning_messages[game_winner]
	  	end
	  	return message
  	end
end