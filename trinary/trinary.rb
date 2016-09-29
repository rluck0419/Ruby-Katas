class Trinary
  def initialize(n)
    return 0 unless n.chars.all? { |i| i =~ (/[0|1|2]/) }
    @n = n
  end

  def to_decimal
    length = @n.length
    output = 0

    length.times do |i|
      output += @n[i].to_i * 3 ** (length - 1)
      length -= 1
    end
    output
  end
end
