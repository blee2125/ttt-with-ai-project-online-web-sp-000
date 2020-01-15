module Players
  class Computer < Player

    def move(board)
      move= nil
      if !board.taken?(5)
        move= "5"
      elsif board.turn_count == 1
        move= "1"
      elsif board.turn_count == 2
        move= [1, 3, 7, 9].detect{|m| !board.taken?(m)}.to_s
      elsif board.turn_count == 3 && (board.position(1) == board.position(9) || board.position(3) == board.position(7))
        move= "2"
      else

      end
    end


  end
end
