require './player'

class Game
  attr_reader :loser_movements 
  attr_accessor :user, :computer

  def initialize()
  	@user = Player.new('User')
  	@computer = Player.new('Computer')  	
  	@loser_movements = {'Spock' => ['Lizard','Paper'],
  					'Lizard' => ['Rock','Scissors'],
  					'Scissors' => ['Rock','Spock'],
  					'Paper' => ['Scissors','Lizard'],  					
  					'Rock' => ['Paper','Spock']}
  end

  def print_winner
  	winner_messaages = {'User'=>'You Win',
  						'Computer' => 'You Lost',
  						'Draw' => 'Draw'}
  	
  	winner_message = winner_messaages[who_wins?]
	if @computer.wins == 3
		winner_message = 'Computer Wins the Game'
	elsif @user.wins == 3
		winner_message = 'You Win the Game'		
	end

	return winner_message
  end

  private
  
  def user_lost?
  	@loser_movements[@user.movement].include? @computer.movement
  end

  def who_wins?
	if user_lost?
		@computer.wins += 1		
		winner = 'Computer'
	elsif @user.movement == @computer.movement
		winner = 'Draw'
	else		
		@user.wins += 1	
		winner = 'User'
	end

	return winner
  end
end