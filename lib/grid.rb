class Grid
  GRIDSIZE = 3
  DOT = "."
  VALID = 'valid'
  def initialize
    @grid = [[".", ".", "."], [".", ".", "."], [".", ".", "."]]
  end

  def check_for_a_win(name,move_type)
    win_line = move_type * 3
    x = "#{name} wins" if (
      @grid[0].join == win_line ||
      @grid[1].join == win_line ||
      @grid[2].join == win_line ||
      @grid.transpose[0].join == win_line ||
      @grid.transpose[1].join == win_line ||
      @grid.transpose[2].join == win_line ||
      (@grid[0][0] + @grid[1][1] + @grid[2][2]) == win_line ||
      (@grid[2][0] + @grid[1][1] + @grid[0][2]) == win_line)
     return x
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
    if move_already_played(x, y)
      return 'This move has already been played'
    end
    return VALID
  end

  private

  def invalid_coordinate(coord)
    !((coord.is_a? Integer) && coord >= 1 && coord <= 3)
  end

  def move_already_played(x, y)
    @grid[x - 1][y - 1] != DOT
  end
end
