class Board
  attr_accessor :cells
  def initialize

  end

  def display
    puts " #{cells[0]} | #{cells[1]} | #{cells[2]} "
    puts '-----------'
    puts " #{cells[3]} | #{cells[4]} | #{cells[5]} "
    puts '-----------'
    puts " #{cells[6]} | #{cells[7]} | #{cells[8]} "
  end

  def full?
    cells.all? { |token| token == 'X' || token == 'O' }
  end

end
