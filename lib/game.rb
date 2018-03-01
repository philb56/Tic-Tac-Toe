class Game
  def initialize(grid, turn)
    @grid = grid
    @turn = turn
  end

  def grid_state
    @grid.grid_state
  end

  def whose_turn
    @turn.whose_turn
  end
end
