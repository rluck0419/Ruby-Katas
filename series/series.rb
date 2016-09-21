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
      fixnums = []
      digits.each do |d|
        fixnums << d.to_i
      end
      output << fixnums
    end
    output
  end
end
