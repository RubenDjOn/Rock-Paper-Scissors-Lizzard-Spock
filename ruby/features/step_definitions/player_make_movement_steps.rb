Given(/^I have the option to choose a movement$/) do
  require './game'
  require './player'
  require './round'
  require './printer'  
  @game = Game.new(Player.new('User'), Player.new('Computer'), Round.new, Printer.new)  
  @my_movement = ''
end

When(/^I choose (.*?)$/) do |movement|
  @game.player_moves(@game.player_user, movement)
end

When(/^Computer choose (.*?)$/) do |movement|
  @game.player_moves(@game.player_computer, movement)  
end

Then(/^I must see the message (.*?)$/) do |message|  
  @game.proccess_winner  
  winner_message = @game.print_winner
  message.should == winner_message
end

Given(/^I won (\d+) rounds before$/) do |user_wins|
  @game.player_user.wins = user_wins.to_i
end

Given(/^The computer won (\d+)$/) do |computer_wins|
  @game.player_computer.wins = computer_wins.to_i
end
