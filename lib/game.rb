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

  def play(x, y)
    @grid.play(x, y, @turn.current_player.move_type)
    @turn.change_turn
  end
end
