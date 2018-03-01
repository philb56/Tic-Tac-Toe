class Turn
  CROSS = 'X'
  NOUGHT = '0'
  attr_reader :player1, :player2
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @player1.allocate_move_type(CROSS)
    @player2.allocate_move_type(NOUGHT)
  end

end
