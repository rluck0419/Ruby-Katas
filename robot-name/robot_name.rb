class Robot
  attr_reader :name
  def initialize
    create_name
  end

  def reset
    create_name
  end

  private
  LETTERS = ('A'..'Z').to_a
  NUMS = (0..9).to_a.map { |n| n.to_s }

  def create_name
    Kernel.srand
    @name = LETTERS.sample + LETTERS.sample + NUMS.sample + NUMS.sample + NUMS.sample
  end
end

module BookKeeping
  VERSION = 2
end
