class Array
  def keep
    self.map { |n| n if yield(n) }.compact
  end

  def discard
    self.map { |n| n unless yield(n) }.compact
  end
end
