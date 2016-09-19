class Array
  def accumulate(result = [], &block)
    each { |x| result << block.call(x) }
    result
  end
end
