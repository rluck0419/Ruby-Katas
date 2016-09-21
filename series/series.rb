class Series
  def initialize(digits)
    @digits = digits
  end

  def slices(length)
    output = []
    @digits.length.times do |i|
      digits = @digits.slice(i...length+i).split("")
      fixnums = []
      digits.each do |d|
        fixnums << d.to_i
      end
      output << fixnums if fixnums.length == length
    end
    output
  end
end
