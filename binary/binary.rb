class Binary
  def initialize(n)
    @binary = n
    raise ArgumentError, 'Argument contains a non-binary digit' unless @binary.chars.all? { |i| i =~ (/[0|1]/) }
  end

  def to_decimal
    length = @binary.length
    output = 0

    length.times do |i|
      output += @binary[i].to_i * 2 ** (length - 1)
      length -= 1
    end
    output
  end
end

module BookKeeping
  VERSION = 2
end
