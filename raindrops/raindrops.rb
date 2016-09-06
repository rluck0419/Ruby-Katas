class Raindrops
  def self.convert(n)
    result = ""
    result += "Pling" if (n % 3).zero?
    result += "Plang" if (n % 5).zero?
    result += "Plong" if (n % 7).zero?
    result += n.to_s if result.length.zero?
    result
  end
end


module BookKeeping
  VERSION = 2 # Where the version number matches the one in the test.
end
