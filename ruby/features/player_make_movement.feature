Feature: Player Make Movement
	In order to play the Game
	the player select a movement and the game
	shows who is the winner

	Scenario Outline: Select Movement
		Given I have the option to choose a movement
		When I choose <My Movement>
		And Computer choose <Computer Movement>
		Then I must see the message <Winner of the Round>

		Examples: I Win

			| My Movement | Computer Movement | Winner of the Round |
			| Spock       | Scissors          | You Win             |
			| Rock        | Scissors          | You Win             |
		
		Examples: Draw

			| My Movement | Computer Movement | Winner of the Round |
			| Lizard      | Lizard            | Draw                |
			| Spock       | Spock             | Draw                |

		Examples: I Lost

			| My Movement | Computer Movement | Winner of the Round |
			| Spock       | Lizard            | You Lost            |
			| Spock       | Paper             | You Lost            |
			| Lizard      | Rock              | You Lost            |
			| Lizard      | Scissors          | You Lost            |
			| Scissors    | Rock              | You Lost            |
			| Scissors    | Spock             | You Lost            |
			| Paper       | Scissors          | You Lost            |
			| Paper       | Lizard            | You Lost            |
			| Rock        | Paper             | You Lost            |
			| Rock        | Spock             | You Lost            |
				
	Scenario Outline: Win/Lost the Game
		In order to proclaim a Winner		
		We count the number of rounds won by each player 

		Given I have the option to choose a movement
		And I won <User Wins> rounds before
		And The computer won <Computer Wins>
		When I choose <My Movement>
		And Computer choose <Computer Movement>
		Then I must see the message <Game Winner>

		Examples: I Win the Game

		| User Wins | Computer Wins | My Movement | Computer Movement | Game Winner            |
		| 2         | 2             | Spock       | Lizard            | Computer Wins the Game |
		| 2         | 2             | Paper       | Rock              | You Win the Game       |
		| 0         | 2             | Paper       | Rock              | You Win                |
		| 0         | 2             | Rock        | Paper             | Computer Wins the Game |
		| 2         | 1             | Rock        | Scissors          | You Win the Game       |
