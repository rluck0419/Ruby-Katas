class Trinary
  def initialize(n)
    @n = n
  end

  def to_decimal
    return 0 unless @n.chars.all? { |i| i =~ (/[0-2]/) }
    length = @n.length
    output = 0

    length.times do |i|
      output += @n[i].to_i * 3 ** (length - 1)
      length -= 1
    end
    output
  end
end

module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end
