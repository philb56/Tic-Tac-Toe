class Player
  attr_reader :name, :move_type
  def initialize(name)
    @name = name
  end

  def identity
    @name
  end

  def allocate_move_type(move_type)
    @move_type = move_type
  end
end
