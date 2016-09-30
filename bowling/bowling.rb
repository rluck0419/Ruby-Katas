class Game
  def initialize
    @score = 0
    @prev = 0
    @bonus = 1
  end

  def roll(a)
    @score += a * @bonus
    
    if a == 10 || @prev == 10
      @bonus = 2
      @prev = a
    else
      @bonus = 1
    end
  end

  def score
    @score
  end
end
