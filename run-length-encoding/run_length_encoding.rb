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
    letters = string.split("")
    output = ""

    i = 0
    until i >= letters.length
      current = letters[i]
      if (true if Float(current) rescue false)
        if (true if Float(letters[i+1]) rescue false)
          (current + letters[i+1]).to_i.times do
            output += letters[i+2]
          end
          i += 3
        else
          current.to_i.times do
            output += letters[i+1]
          end
          i += 2
        end
      else
        output += current
        i += 1
      end
    end
    output
  end
end

module BookKeeping
  VERSION = 2
end
