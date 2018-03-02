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

  def game_over
    @grid.check_for_a_win(@turn.current_player.name,
                         @turn.current_player.move_type)
  end

  def game_state
    if !game_over
      @turn.change_turn
      @turn.whose_turn
    else
      game_over
    end
  end

  def play(x, y)
    move_state = @grid.play(x, y, @turn.current_player.move_type)
    if (move_state == Grid::VALID)
      game_state
    else
      move_state
    end
  end
end
