require 'player'
describe Player do
  context 'Register a player' do
    subject(:player) { described_class.new('Bob') }
    it 'should be able to display name' do
      expect(subject.identity).to eq 'Bob'
    end
  end
end
