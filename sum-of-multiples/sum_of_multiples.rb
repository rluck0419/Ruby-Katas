class SumOfMultiples
  def initialize(*args)
    @factors = args
  end

  def to(top, result = 0)
    (1..top).each do |num|
      result += num if @factors.any? { |f| num % f == 0  }
    end
    result
  end
end
