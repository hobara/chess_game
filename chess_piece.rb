class Piece
  attr_reader :name
  def initialize
    @piece
    @name = "C"
  end
end


class NullPiece < Piece
  def initialize
    @name = "N"
  end
end
