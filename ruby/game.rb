class Game
  attr_reader :loser_movements, :printer
  attr_accessor :player_user, :player_computer, :round

  def initialize(user, computer, round, printer)
  	@player_user = user
  	@player_computer = computer
  	@round = round
  	@printer = printer
  	@winner
  end

  def player_moves(player, movement)
  	player.last_movement = movement
  	@round.players_movement[player.name] = movement
  end

  def proccess_winner
  	@round.who_wins?
  	increase_wins_of_the_winner
  end

  def print_winner
  	@printer.print_winning_message(@round.winner, @winner)
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