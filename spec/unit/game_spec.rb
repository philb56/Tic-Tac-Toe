require 'game'
describe Game do
  let(:turn) { double :turn, whose_turn: 'Player1' }
  let(:grid) { double :grid, grid_state: ".........", play: "X" }
  subject(:game) { described_class.new(:grid, :turn) }
  context 'Game setup' do
    it 'should be able to report the state of the grid' do
      game = Game.new(grid, turn)
      expect(grid).to receive(:grid_state)
      game.grid_state
    end
    it 'should be able to report whose turn it is' do
      game = Game.new(grid, turn)
      expect(turn).to receive(:whose_turn)
      game.whose_turn
    end
  end
  context 'Game play' do
    it 'should be able to make a move' do
      game = Game.new(grid, turn)
      allow(turn).to receive(:current_player)
      allow(turn.current_player).to receive(:move_type).and_return('X')
      allow(turn).to receive(:change_turn)
      expect(grid).to receive(:play).with(1, 2, 'X')
      game.play(1, 2)
    end
  end
end
