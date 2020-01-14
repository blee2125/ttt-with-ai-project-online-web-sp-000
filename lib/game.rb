class Game
  attr_accessor :player_1, :player_2, :board
  WIN_COMBINATIONS = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [6, 4, 2]
  ].freeze

  def initialize(player_1= ("X"), player_2= ("O"), board)
    @player_1= player_1
    @player_2= player_2
    @board= board
  end

  def current_player
    turn_count.even? ? 'X' : 'O'
  end

  def won?
    WIN_COMBINATIONS.detect do |combo|
      cells[combo[0]] == cells[combo[1]] &&
        cells[combo[1]] == cells[combo[2]] &&
        taken?(cells, combo[0])
    end
  end

  def draw?
    !won? && full?
  end

  def over?
    won? || draw?
  end

  def winner

  end

  def turn

  end

  def play

  end

end
