class Board
  attr_accessor :cells

  def initialize
    reset!
  end

  def display
    puts " #{cells[0]} | #{cells[1]} | #{cells[2]} "
    puts '-----------'
    puts " #{cells[3]} | #{cells[4]} | #{cells[5]} "
    puts '-----------'
    puts " #{cells[6]} | #{cells[7]} | #{cells[8]} "
  end

  def reset!
    @cells= Array.new(9, " ")
  end

  def full?
    cells.all? { |token| token == 'X' || token == 'O' }
  end

  def turn_count
    cells.count { |token| token == 'X' || token == 'O' }
  end

  def taken?(cells, index)
    cells[index] == 'X' || cells[index] == 'O'
  end

  def valid_move?(cells, index)
    index.between?(0, 8) && !position_taken?(cells, index)
  end

  def position(input)
    cells[input.to_i-1]
  end
end
