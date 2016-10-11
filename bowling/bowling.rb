class Game
  def initialize
    @score = 0
    @prev1 = 0
    @prev2 = 0
    @strike_bonus = 1
    @spare_bonus = 0
  end

  def roll(a)
    @score += a * @strike_bonus + @spare_bonus

    if a == 10 || @prev1 == 10
      @strike_bonus = 2
    elsif @prev1 + @prev2 == 10
      @score += a
    else
      @strike_bonuse = 1
    end
    @prev2 = @prev1
    @prev1 = a
  end

  def score
    @score
  end
end
