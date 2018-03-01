require 'turn'
describe Turn do
  let(:player1) { double :player, allocate_move_type: 'X', name: :Bud, move_type: 'X' }
  let(:player2) { double :player, allocate_move_type: '0', name: :Lou, move_type: '0' }
  subject(:turn) { described_class.new(player1, player2) }
  context 'set up' do
    it 'should allocate cross to player1' do
      expect(subject.player1).to receive(:allocate_move_type).with('X')
      described_class.new(player1, player2)
    end

    it 'should allocate nought to player2' do
      expect(subject.player2).to receive(:allocate_move_type).with('0')
      described_class.new(player1, player2)
    end
  end
  context 'Whose go?' do
    it 'should be able state whose go is first' do
      expect(subject.whose_turn).to eq 'Player 1 - Bud - please play X'
    end
    it 'should be able state whose go is second' do
      subject.change_turn
      expect(subject.whose_turn).to eq 'Player 2 - Lou - please play 0'
    end
    it 'should be able state whose go is ninth' do
      8.times { subject.change_turn }
      expect(subject.whose_turn).to eq 'Player 1 - Bud - please play X'
    end
  end
end
