class RunLengthEncoding
  def self.encode(string)
    letters = string.split("")
    output = ""

    until letters.empty?
      current = letters.first
      count = 0

      while letters.first == current
        letters.shift
        count += 1
      end
      if count > 1
        output += count.to_s + current
      else
        output += current
      end
    end
    output
  end

  def self.decode(string)
    string.scan(/(\d+)?(\D)/).each_with_object("") do |x, output|
      amount = (x[0] || 1).to_i
      s = x[-1]
      output << s * amount
    end
  end
end

module BookKeeping
  VERSION = 2
end
