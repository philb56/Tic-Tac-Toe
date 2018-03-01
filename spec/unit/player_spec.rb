require 'player'
describe Player do
  context 'Register a player' do
    subject :player {described_class.new('Bob','X')}
    it 'should be able to display name and move type' do
      expect(subject.identity).to eq 'Bob (X)'
    end
  end
end
