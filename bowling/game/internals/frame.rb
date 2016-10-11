class Game
  module Internals
    class Frame
      attr_reader :rolls

      def initialize
        @rolls = []
      end

      def complete?
        strike? || 2 == rolls.size
      end

      def roll(n)
        validate_roll(n)
        rolls << n
      end

      def score(following_frames = [])
        if following_frames.empty?
          rolls.reduce(0, :+)
        elsif strike?
          score_with_bonus(2, following_frames)
        elsif spare?
          score_with_bonus(1, following_frames)
        else
          rolls.reduce(0, :+)
        end
      end

      def score_with_bonus(bonus_rolls, following_frames)
        following_frames
          .first(bonus_rolls)
          .flat_map(&:rolls)
          .first(bonus_rolls)
          .reduce(10, :+)
      end

      def strike?
        rolls.first == 10
      end

      def spare?
        !strike? && 2 <= rolls.size && rolls[0] + rolls[1] == 10
      end

      def validate_roll(n)
        raise 'Tried to roll but the frame is complete' if complete?
        raise 'Pin count exceeds pins on the lane' if 10 < n + score
      end
    end
  end
end
