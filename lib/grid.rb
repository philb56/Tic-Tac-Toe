class Grid
  GRIDSIZE = 3
  DOT = "."
  VALID = 'valid'
  def initialize
    @grid = [[".", ".", "."], [".", ".", "."], [".", ".", "."]]
  end

  def grid_state
    state = ""
    @grid.each { |line| state += "#{line.join}\n" }
    state
  end

  def play(x, y, move_type)
    message = validate_move(x, y)
    @grid[x - 1][y - 1] = move_type if message == VALID
    message
  end

  def validate_move(x, y)
    if invalid_coordinate(x) || invalid_coordinate(y)
      return 'This is not a valid move - should be between 1,1 and 3,3'
    end
    return VALID
  end

  private

  def invalid_coordinate(coord)
    !((coord.is_a? Integer) && coord >= 1 && coord <= 3)
  end
end
