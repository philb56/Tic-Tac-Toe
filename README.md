# Try our Tic Tac Toe Tech Test!

This is a very common tech test as it demonstrates a candidate's knowledge of basic data structures.

## The brief

The rules of tic-tac-toe are as follows:

* There are two players in the game (X and O)
* Players take turns until the game is over
* A player can claim a field if it is not already taken
* A turn ends when a player claims a field
* A player wins if they claim all the fields in a row, column or diagonal
* A game is over if a player wins
* A game is over when all fields are taken

Build the business logic for a game of tic tac toe. It should be easy to implement a working game of tic tac toe by combining your code with any user interface, whether web or command line.

## Approach

#### Classes

* Player - understands whether to play X or 0
* Grid - controls the playing area eg knows which fields are available to play
* Turn - controls which player plays and terminates the game with a win or draw message
* Game - has knowledge of Player, Grid and Turn - controls the whole game

#### Public Interface

* Game.grid_state - current state of the grid expressed as a nine character string of "X", "0" and "."
* Game.whose_turn - returns who should play next eg Player 2 - Lou - please play 0
* Game.play(x, y) - play a move. Note (1,1) represents the top left of the grid, (3,3) the bottom right


How to run rspec tests & simplecov coverage stats
=================================================
git clone https://github.com/philb56/Tic-Tac-Toe.git
```
bundle install
rspec
```

How to run example in irb with Player 1: Bud and Player 2: Lou
==============================================================
```
require './setup_for_command_line'
@game.whose_turn
=> "Player 1 - Bud - please play X"
@game.grid_state
 => "........."
@game.play(1,1)
 => "Player 2 - Lou - please play 0"
@game.grid_state
 => "X........"
@game.play(1,3)
 => "Player 1 - Bud - please play X"
@game.grid_state
 => "X.0......"
@game.play(2,1)
 => "Player 2 - Lou - please play 0"
@game.grid_state
 => "X.0X....."
@game.play(2,3)
=> "Player 1 - Bud - please play X"
@game.grid_state
=> "X.0X.0..."
@game.play(2,3)
=> "This move has already been played"
@game.whose_turn
=> "Player 1 - Bud - please play X"
@game.play(3,1)
=> "Bud wins"
```
