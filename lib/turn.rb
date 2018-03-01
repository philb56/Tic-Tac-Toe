class Turn
  CROSS = 'X'
  NOUGHT = '0'
  attr_reader :player1, :player2
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @player1.allocate_move_type(CROSS)
    @player2.allocate_move_type(NOUGHT)
    @turn = 1
  end

  def whose_turn
    "Player #{@turn} - #{current_player.name} " +
    "- please play #{current_player.move_type}"
  end

  def change_turn
    @turn = (@turn == 1 ? 2 : 1)
  end

  def current_player
    @turn == 1 ? @player1 : @player2
  end

end
