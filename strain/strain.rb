class Array
  def keep(&block)
    return if block == nil
    self.map { |n| n if block.call(n) }.compact
  end
end
