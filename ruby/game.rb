require './round'

class Game
  attr_reader :loser_movements 
  attr_accessor :player_user, :player_computer, :round

  def initialize(user, computer)
  	@player_user = user
  	@player_computer = computer
  	@round = Round.new
  	@winner
  	@loser_movements = {'Spock' => ['Lizard','Paper'],
  					'Lizard' => ['Rock','Scissors'],
  					'Scissors' => ['Rock','Spock'],
  					'Paper' => ['Scissors','Lizard'],
  					'Rock' => ['Paper','Spock']}
  	@winning_messages = {'User' => 'You Win the Game',
  						 'Computer'=> 'Computer Wins the Game'}
  end

  def user_moves(movement)
  	@player_user.last_movement = movement
  	@round.user_movement = movement
  end

  def computer_moves(movement)
  	@player_computer.last_movement = movement
  	@round.computer_movement = movement
  end

  def proccess_winner
  	@round.who_wins?
  	increase_wins_of_the_winner
  end

  def print_winning_message  	
  	message = round.get_winning_message
  	if @winner
  		message = @winning_messages[@winner]
  	end
  	return message
  end

  private 
  def increase_wins_of_the_winner
  	if @round.winner == 'User'
  		@player_user.wins += 1
  		@winner = 'User' if @player_user.is_winner_of_the_game
  	elsif @round.winner == 'Computer'
  		@player_computer.wins += 1
  		@winner = 'Computer' if @player_computer.is_winner_of_the_game
  	end  		
  end
end