class Game
  def initialize
    @score = 0
  end

  def roll(a)
    @score += a
  end

  def score
    @score
  end
end
