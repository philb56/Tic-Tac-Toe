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
      expect(@game.grid_state).to eq "X........"
    end
    it "should let player 1 and player 2 play a move" do
      @game.play(1, 1)
      @game.play(1, 2)
      expect(@game.grid_state).to eq "X0......."
    end
    it "should let player 1 and player 2 to fill the grid" do
      [1, 2].each { |x| [1, 2, 3].each { |y| @game.play(x, y) } }
      @game.play(3, 2)
      @game.play(3, 1)
      @game.play(3, 3)
      expect(@game.grid_state).to eq "X0X0X00XX"
    end
    it "should allow player to replay a move if the move was invalid" do
      @game.play(1, 1)
      @game.play(1, 1)
      @game.play(1, 2)
      expect(@game.grid_state).to eq "X0......."
    end
    it "should return whose go next" do
      expect(@game.play(1, 1)).to eq 'Player 2 - Lou - please play 0'
      expect(@game.play(1, 2)).to eq 'Player 1 - Bud - please play X'
    end
  end
  context 'Game over - win or draw' do
    before :each do
      player1 = Player.new('Bud')
      player2 = Player.new('Lou')
      turn = Turn.new(player1, player2)
      grid = Grid.new()
      @game = Game.new(grid, turn)
    end
    it "should let player 1 win with Xs on line1" do
      @game.play(1, 1)
      @game.play(2, 1)
      @game.play(1, 2)
      @game.play(2, 2)
      expect(@game.play(1, 3)).to eq "Bud wins"
    end
    it "should let player 1 win with Xs on line2" do
      @game.play(2, 1)
      @game.play(3, 1)
      @game.play(2, 2)
      @game.play(3, 2)
      expect(@game.play(2, 3)).to eq "Bud wins"
    end
    it "should let player 1 win with Xs on line3" do
      @game.play(3, 1)
      @game.play(2, 1)
      @game.play(3, 2)
      @game.play(2, 2)
      expect(@game.play(3, 3)).to eq "Bud wins"
    end
    it "should let player 1 win with Xs on column 1" do
      @game.play(1, 1)
      @game.play(1, 2)
      @game.play(2, 1)
      @game.play(2, 2)
      expect(@game.play(3, 1)).to eq "Bud wins"
    end
    it "should let player 1 win with Xs on column 2" do
      @game.play(1, 2)
      @game.play(1, 1)
      @game.play(2, 2)
      @game.play(2, 1)
      expect(@game.play(3, 2)).to eq "Bud wins"
    end
    it "should let player 1 win with Xs on column 3" do
      @game.play(1, 3)
      @game.play(1, 1)
      @game.play(2, 3)
      @game.play(2, 1)
      expect(@game.play(3, 3)).to eq "Bud wins"
    end
    it "should let player 1 win with Xs on forward slash diagonal" do
      @game.play(1, 3)
      @game.play(1, 1)
      @game.play(2, 2)
      @game.play(2, 1)
      expect(@game.play(3, 1)).to eq "Bud wins"
    end
    it "should let player 1 win with Xs on back slash diagonal" do
      @game.play(1, 1)
      @game.play(1, 2)
      @game.play(2, 2)
      @game.play(2, 1)
      expect(@game.play(3, 3)).to eq "Bud wins"
    end
  end
end
