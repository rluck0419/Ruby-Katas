class RunLengthEncoding
  def self.encode(string, output = "")
    return output if string.length.zero?
    n = 0
    while string[n] == string[0]
      n+=1
    end
    output << "#{n.to_s if n > 1}#{string[0]}"
    string.slice!(0...n)
    return encode(string, output)
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
