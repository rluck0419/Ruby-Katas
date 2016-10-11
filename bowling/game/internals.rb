require_relative 'internals/frame'
require_relative 'internals/tenth_frame'

class Game
  ###
  # The code in this module is used by the public methods of Game, but is
  # otherwise untested. Use with caution.
  module Internals
    private

    def complete?
      10 == @frames.size && @frames.last.complete?
    end

    def add_new_frame
      @frames << (9 == @frames.size ? TenthFrame : Frame).new
    end

    def valid_roll?(n)
      0 <= n && n <= 10
    end
  end

  private_constant :Internals
end
