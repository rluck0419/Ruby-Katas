class Series
  def initialize(digits)
    @digits = digits
  end

  def slices(length)
    output = []
    @digits.length.times do |i|
      output << [@digits[i...i+length].to_i]
    end
    output
  end
end
