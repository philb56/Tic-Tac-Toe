require './lib/game'
require './lib/grid'
require './lib/turn'
require './lib/player'
player1 = Player.new('Bud')
player2 = Player.new('Lou')
turn = Turn.new(player1, player2)
grid = Grid.new()
@game = Game.new(grid, turn)
