class Array
  def accumulate(result = [], &block)
    each { |x| result << yield(x) }
    result
  end
end
