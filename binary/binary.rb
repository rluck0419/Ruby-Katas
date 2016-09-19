class Binary
  def initialize(n)
    @num = n.to_i
  end

  def to_decimal
    @num * 2 ** 0
  end
end

module BookKeeping
  VERSION = 2
end
