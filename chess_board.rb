require_relative 'chess_piece'
require 'byebug'

class Board
  attr_accessor :board


  def initialize
    @board = Array.new(8) {Array.new(8)}
    i = 0
    while i < 8
      @board[0][i] = Piece.new
      @board[1][i] = Piece.new
      @board[2...8].map { |arr| arr[i] = NullPiece.new }
      i += 1
    end
  end

  def [](position)
    row, col = position
    @board[row][col]
  end

  def []=(position, piece)
    row, col = position
    @board[row][col] = piece
  end

  def move_piece(start_pos, end_pos)
    if self[start_pos].nil?
      p "No piece at this position"
      newstart_pos = gets.chomp.delete("[,]").split("").map(&:to_i)
      start_pos = newstart_pos
    end
    unless self[end_pos].nil?
      p "Not empty at this position"
      newend_pos = gets.chomp.delete("[,]").split("").map(&:to_i)
      end_pos = newend_pos
    end
    self[end_pos], self[start_pos] = self[start_pos], self[end_pos]
  end


end

# a = Board.new
# p a.board
# # p a[[0,0]]
# # p a.board[0][0]
# # p a.board
# # p a.move_piece([0,0],[5,5])
# p a[[5,5]]
# p a.move_piece([7,7],[5,5])
# p a[[0,0]]
# p a[[5,5]]
