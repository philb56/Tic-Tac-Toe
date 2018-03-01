require 'turn'
describe Turn do
  context 'set up' do
    let(:player1) { double :player, allocate_move_type: 'X'}
    let(:player2) { double :player, allocate_move_type: '0' }
    subject(:turn) { described_class.new(player1, player2) }
    it 'should allocate cross to player1' do
      expect(turn.player1).to receive(:allocate_move_type).with('X')
      turn = described_class.new(player1, player2)
    end
    it 'should allocate nought to player2' do
      expect(turn.player2).to receive(:allocate_move_type).with('0')
      turn = described_class.new(player1, player2)
    end
end
end
