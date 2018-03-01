class Player

  def initialize(name, move_type)
    @name = name
    @move_type = move_type
  end

  def identity
    "#{@name} (#{@move_type})"
  end
end
