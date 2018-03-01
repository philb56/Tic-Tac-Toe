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
    @grid[x - 1][y - 1] = move_type
  end
end
