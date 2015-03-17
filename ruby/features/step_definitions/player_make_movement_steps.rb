Given(/^I have the option to choose a movement$/) do
  require './game'
  require './player'  
  @game = Game.new(Player.new('User'), Player.new('Computer'))  
  @my_movement = ''
end

When(/^I choose (.*?)$/) do |movement|
  @game.user_moves(movement)
end

When(/^Computer choose (.*?)$/) do |movement|
  @game.computer_moves(movement)
  #@game.computer.move(movement)
  #@game.move(computer, movement)
end

Then(/^I must see the message (.*?)$/) do |message|  
  @game.proccess_winner
  #winner_message = @game.round.print_winner
  winner_message = @game.print_winning_message
  message.should == winner_message
end

Given(/^I won (\d+) rounds before$/) do |user_wins|
  @game.player_user.wins = user_wins.to_i
end

Given(/^The computer won (\d+)$/) do |computer_wins|
  @game.player_computer.wins = computer_wins.to_i
end
