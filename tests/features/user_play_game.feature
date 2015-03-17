Feature: User play the game
	In order to play the game
	I need to start the app
	And select Scissor, Paper, Rock, Lizard or Spock

	Scenario: Start the game
		Given I'm using a mobile phone
		When I press the app icon on the phone
		Then The game should start and show the main screen

	Scenario: Select Movement
		Given I'm on the selection movement screen
		When I select Scissor, Parper, Rock, Lizard or Spock
		Then I should win or lost the Match

	Scenario: Match Won 
		Given I've selected a movement
		When The game process the selection
		And I win the match
		Then I should see an screen showing that I'm the winner

	Scenario: Match Losted
		Given I've selected a movement
		When The game process the selection
		And I lost the match
		Then I should see an screen showing that I'm the loser

	Scenario: Match Drawed
		Given I've selected a movement
		When The game process the selection
		And I tie the match
		Then I should see an screen showing that the match is Tied.

	Scenario: Game Won
		Given I've won 2 matches
		When I won the third match
		Then I should see an screen showing that I'm the winner of the game

	Scenario: Game Lost
		Given The opponent won 2 matches
		When The opponent wont the third match
		Then I should see an screen showing that I'm the loser of the game




		T