require 'grid'
describe Grid do
  context 'Create a grid' do
    subject(:grid) { described_class.new() }
    it 'should be able to display the grid' do
      expect(subject.grid_state).to eq "...\n...\n...\n"
    end
  end
  context 'Update a grid with a play' do
    subject(:grid) { described_class.new() }
    it 'should be able to add a move to the grid at 1,1' do
      subject.play(1, 1, "X")
      expect(subject.grid_state).to eq "X..\n...\n...\n"
    end
    it 'should be able to add a move to the grid at 1,2' do
      subject.play(1, 2, "X")
      expect(subject.grid_state).to eq ".X.\n...\n...\n"
    end
    it 'should be able to add a move to the grid at 3,3' do
      subject.play(3, 3, "X")
      expect(subject.grid_state).to eq "...\n...\n..X\n"
    end
    it 'should be able to add a move to the grid at 3,3' do
      subject.play(2, 3, "X")
      expect(subject.grid_state).to eq "...\n..X\n...\n"
    end
  end
end
