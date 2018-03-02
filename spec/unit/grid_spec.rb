require 'grid'
describe Grid do
  context 'Create a grid' do
    subject(:grid) { described_class.new() }
    it 'should be able to display the grid' do
      expect(subject.grid_state).to eq "........."
    end
  end
  context 'Update a grid with a play' do
    subject(:grid) { described_class.new() }
    it 'should be able to add a move to the grid at 1,1' do
      subject.play(1, 1, "X")
      expect(subject.grid_state).to eq "X........"
    end
    it 'should be able to add a move to the grid at 1,2' do
      subject.play(1, 2, "X")
      expect(subject.grid_state).to eq ".X......."
    end
    it 'should be able to add a move to the grid at 3,3' do
      subject.play(3, 3, "X")
      expect(subject.grid_state).to eq "........X"
    end
    it 'should be able to add a move to the grid at 3,3' do
      subject.play(2, 3, "X")
      expect(subject.grid_state).to eq ".....X..."
    end
  end
  context 'validate move' do
    subject(:grid) { described_class.new() }
    it 'should not be able to move off the grid in the X direction' do
      message = 'This is not a valid move - should be between 1,1 and 3,3'
      expect(subject.play(0, 3, "X")).to eq message
    end
    it 'should not be able to move off the grid in the Y direction' do
      message = 'This is not a valid move - should be between 1,1 and 3,3'
      expect(subject.play(1, 4, "X")).to eq message
    end
    it 'should not be able to play in a field that has already been taken' do
      message = 'This move has already been played'
      subject.play(1, 1, "X")
      expect(subject.play(1, 1, "Y")).to eq message
    end
  end
end
