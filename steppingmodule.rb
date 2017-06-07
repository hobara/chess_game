module Stepping

  def moves(piece_name, pos)
    if piece_name == "K"
      move_diff_k(pos)
    elsif piece_name == "Kt"
      move_diff_kt(pos)
    end
  end

  def move_diffs_k(pos)
    i, j = pos
    answer = []
    ((i-1)..(i+1)).each { |n| answer << [n, j] }
    ((i-1)..(i+1)).each { |n| answer << [n, j-1] }
    ((i-1)..(i+1)).each { |n| answer << [n, j+1] }
    answer - [pos]
  end

  def move_diffs_kt(pos)
    ans = []
    delta = [[1,2],[2,1],[2,-1],[1,-2],[-2,-2],[-2,-1],[-2,1],[-1, 2]]
    delta.each {|arr| ans << [arr[0]+pos[0],arr[1]+pos[1]]}
    ans
  end








end

class King < Piece

  def initialize
    @name = "K"
    @start_pos
    @end_pos
  end

  def move
  end
end

class Knight < Piece

  def initialize
    @name = "Kt"
    @start_pos
    @end_pos
  end

  def move_diffs_kt
  end
end
