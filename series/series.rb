class Series
  def initialize(digits)
    @digits = digits
  end

  def slices(length)
    raise ArgumentError if length > @digits.length
    output = []
    @digits.length.times do |i|
      digits = @digits.slice(i...length+i).split("")
      break if digits.length < length
      output << digits.map { |d| d.to_i }
    end
    output
  end
end
