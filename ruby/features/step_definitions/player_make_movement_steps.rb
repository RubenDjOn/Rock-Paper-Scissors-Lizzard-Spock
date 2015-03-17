Given(/^I have the option to choose a movement$/) do
  require './game'
  @game = Game.new
  @game.loser_movements
  @my_movement = ''
end

When(/^I choose (.*?)$/) do |movement|
  @game.user.movement = movement  
end

When(/^Computer choose (.*?)$/) do |movement|
  @game.computer.movement = movement  
end

Then(/^I must see the message (.*?)$/) do |message|  
  winner_message = @game.print_winner
  message.should == winner_message
end

Given(/^I won (\d+) rounds before$/) do |user_wins|
  @game.user.wins = user_wins.to_i
end

Given(/^The computer won (\d+)$/) do |computer_wins|
  @game.computer.wins = computer_wins.to_i
end
