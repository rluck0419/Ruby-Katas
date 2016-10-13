class Bst
  def initialize(n)
    @n = [n]
    @last = 1
  end

  def insert(num)
    @n = [num, @n].flatten
  end

  def left
    @last -= 1
    self
  end

  def data
    @n[-@last]
  end
end
