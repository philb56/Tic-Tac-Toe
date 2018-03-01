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

Classes:

Player - understands whether to play X or 0
Grid - controls the playing area eg knows which fields are available to play
Turn - controls which player plays and terminates the game with a win or draw message


How to run rspec tests & simplecov coverage stats
=================================================
git clone https://github.com/philb56/Tic-Tac-Toe.git
bundle install
rspec

How to run in irb
=================
