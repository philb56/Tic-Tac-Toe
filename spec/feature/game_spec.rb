require 'game'
require 'grid'
require 'turn'
require 'player'
describe Game do
  context 'play a game' do
    before :each do
      player1 = Player.new('Bud')
      player2 = Player.new('Lou')
      turn = Turn.new(player1, player2)
      grid = Grid.new()
      @game = Game.new(grid, turn)
    end
    it "should let player 1 play a move" do
      @game.play(1, 1)
      expect(@game.grid_state).to eq "X..\n...\n...\n"
    end
    it "should let player 1 and player 2 play a move" do
      @game.play(1, 1)
      @game.play(1, 2)
      expect(@game.grid_state).to eq "X0.\n...\n...\n"
    end
    it "should let player 1 and player 2 to fill the grid" do
      [1, 2, 3].each { |x| [1, 2, 3].each { |y| @game.play(x, y) } }
      expect(@game.grid_state).to eq "X0X\n0X0\nX0X\n"
    end
  end
end
