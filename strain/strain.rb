class Array
  def keep(&block)
    self.map { |n| n if block.call(n) }.compact
  end

  def discard(&block)
    self.map { |n| n unless block.call(n) }.compact
  end
end
