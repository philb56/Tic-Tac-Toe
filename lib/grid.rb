class Grid
  GRIDSIZE = 3
  DOT = "."
  def initialize
    @grid = [[".",".","."],[".",".","."],[".",".","."]]
  end

  def grid_state
    state = ""
    @grid.each { | line | state += "#{line.join}#{"\n"}"  }
    state
  end
end
