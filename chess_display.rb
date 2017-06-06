require_relative 'cursor'
require 'colorize'
class Display
  def initialize
    @cursor = Cursos.new([0,0], board)
  end



end
