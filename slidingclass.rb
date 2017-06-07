module Slidnging
require 'byebug'

  def moves(piece_name,pos)
    if piece_name == "B"
      diagonal_dirs(pos)
    elsif piece_name == "R"
      horizontal_dirs(pos)
    else
      diagonal_dirs(pos).concat(horizontal_dirs(pos))
    end
  end




  def horizontal_dirs(pos)
    i, j = pos
    answer = []
    (0..7).each do |num|
      answer << [i, num] << [num, j]
    end
  end

  def diagonal_dirs(pos)
    holder = []
    i, j = pos
    step = 1
    while ((i + step).between?(0,7) && (j + step).between?(0,7)) || ((i - step).between?(0,7) && (j - step).between?(0,7))
      holder << [(i + step), (j + step)]
      holder << [(i - step), (j - step)]
      step += 1
    end
    step1 = 1
    while ((i + step1).between?(0,7) && (j - step1).between?(0,7)) || ((i - step1).between?(0,7) && (j + step1).between?(0,7))
      holder << [(i + step1), (j - step1)]
      holder << [(i - step1), (j + step1)]
      step1 += 1
    end
    holder
  end


  def move
    arr_of_pos = Piece.moves(self.name)
    self.start_pos

  end

end

class Bishop < Piece
  include MOLDULE::Slidnging

  def initialize
    @name = "B"
    @start_pos
    @end_pos
  end

  def move(start_pos)
    moves(self.name, start_pos)
  end
end

class Rook < Piece
  include MOLDULE::Slidnging

  def initialize
    @name = "R"
    @start_pos
    @end_pos
  end

  def move(start_pos)
    moves(self.name, start_pos)
  end
end

class Queen < Piece
  include MOLDULE::Slidnging

  def initialize
    @name = "Q2"
    @start_pos
    @end_pos
  end

  def move(start_pos)
    moves(self.name, start_pos)
  end
end
