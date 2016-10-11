require_relative 'bookkeeping'
require_relative 'game/internals'

class Game
  include Internals

  def initialize
    @frames = [Frame.new]
  end

  def roll(n)
    raise 'Pin count outside 0..10' unless valid_roll?(n)
    raise 'Tried to roll, but the game is over' if complete?
    add_new_frame if @frames.last.complete?
    @frames.last.roll(n)
  end

  def score
    raise "Can't score game before it is complete" unless complete?
    @frames.size.times.reduce(0) { |total, index|
      total + @frames[index].score(@frames[index + 1, 2])
    }
  end
end
