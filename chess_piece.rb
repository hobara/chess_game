class Piece
  attr_reader :name
  def initialize
    @piece
    @name = "C"
  end

  def moves(piece_name)
  if ["B","R","Q"].include?(piece_name)



  end
end


class NullPiece < Piece
  def initialize
    @name = "N"
  end
end
end
