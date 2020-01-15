module Players
  class Computer < Player

    def move(board)
      move= nil
      if !board.taken?(5)
        move= "5"
      elsif board.turn_count == 1

      elsif board.turn_count == 2

      elsif board.turn_count == 3

      end
    end


  end
end
