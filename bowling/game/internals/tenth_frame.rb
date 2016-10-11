require_relative 'frame'

class Game
  module Internals
    class TenthFrame < Frame
      def complete?
        if strike? || spare?
          3 == rolls.size
        else
          2 == rolls.size
        end
      end

      def validate_roll(n)
        if strike? && (rolls[1] || 0) < 10 && 20 < score + n
          raise 'Pin count exceeds pins on the lane'
        end
      end
    end
  end
end
