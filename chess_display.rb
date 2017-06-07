require_relative 'cursor'
require_relative 'chess_board'
require 'colorize'
class Display

  attr_reader :board, :cursor

  def initialize
    @cursor = Cursor.new([0,0], board)
    @board = Board.new
  end

  def render
    system('clear')
    @board.board.each_with_index do |row, idx1|
      row.each_with_index do |square, idx2|
        print "|"
        if @cursor.cursor_pos == [idx1, idx2]
          print square.name.colorize(:red)
        elsif square.name == "N"
          print "N".colorize(:green)
        else
          print square.name.colorize(:blue)
        end
        print "|"
      end
      print "\n"
    end
    puts "-" * 24
  end

  def move_cursor_around
    count = 0
    while count <= 24
      self.render
      @cursor.get_input
      self.render
      # count += 1
    end
  end


end

a = Display.new
a.move_cursor_around
