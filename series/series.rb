class Series
  def initialize(digits)
    @digits = digits.split('').collect! { |n| n.to_i }
  end

  def slices(length)
    raise ArgumentError if @digits.length < length
    (0..@digits.length-length).inject([]) do |output, i|
      output << @digits[i...i+length]
    end
  end
end
