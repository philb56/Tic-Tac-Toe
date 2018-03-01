require 'player'
describe Player do
  context 'Register a player' do
    subject(:player) { described_class.new('Bob') }
    it 'should be able to display name' do
      expect(subject.identity).to eq 'Bob'
    end
    it 'should be able to allocate a move type' do
      expect(player.allocate_move_type('X')).to eq 'X'
    end
  end
end
