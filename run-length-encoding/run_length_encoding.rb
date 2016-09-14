class RunLengthEncoding
  def self.encode(string)
    letters = string.split("")
    output = ""
    count = 0

    until letters.empty?
      current = letters.first
      while letters.shift == current
        count += 1
      end
      if count > 1
        output += count.to_s + current
      else
        output += current
      end
      count = 1
    end
    output
  end

  def self.decode(string)
    letters = string.split("")
    output = ""

    'AABBBCCCC'
  end
end
