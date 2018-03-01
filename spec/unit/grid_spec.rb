require 'grid'
describe Grid do
  context 'Create a grid' do
    subject(:grid) { described_class.new() }
    it 'should be able to display the grid' do
      expect(subject.grid_state).to eq "...\n...\n...\n"
    end
  end
end
