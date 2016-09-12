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
    @name = new_name
  end

  def new_name
    alpha_one = LETTERS.sample
    alpha_two = LETTERS.sample
    num_one = NUMS.sample
    num_two = NUMS.sample
    num_three = NUMS.sample

    alpha_one + alpha_two + num_one + num_two + num_three
  end
end

module BookKeeping
  VERSION = 2
end
