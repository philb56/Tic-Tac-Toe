require 'turn'
describe Turn do
  context 'set up' do
    let(:player1) { double :player }
    let(:player2) { double :player }
    subject(:turn) { described_class.new(player1, player2) }
    it 'should allow for two players' do
      expect(turn.player1).to eq player1
      expect(turn.player2).to eq player2
    end
  end
end
