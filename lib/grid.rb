class Grid
  GRIDSIZE = 3
  DOT = "."
  def initialize
    @grid = [[".", ".", "."], [".", ".", "."], [".", ".", "."]]
  end

  def grid_state
    state = ""
    @grid.each { |line| state += "#{line.join}\n" }
    state
  end

  def play(x, y, move_type)
    message = 'This is not a valid move - should be between 1,1 and 3,3'
    return message if validate_move(x, y) != :valid
    @grid[x - 1][y - 1] = move_type
  end

  def validate_move(x, y)
    if (x.is_a? Integer) && x >= 1 && x <= 3 &&
       (y.is_a? Integer) && y >= 1 && y <= 3
      return :valid
    end
  end
end
