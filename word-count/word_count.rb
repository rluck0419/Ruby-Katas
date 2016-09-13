class Phrase
  def initialize(phrase)
    @words = phrase.downcase.gsub(/[^a-zA-Z\d']/, " ").split(" ")
  end

  def word_count
    word_count = {}
    @words.map do |w|
      if w[0] == "'" && w[-1] == "'"
        w = w[1..-2]
      end

      if word_count[w]
        word_count[w] += 1
      else
        word_count[w] = 1
      end
    end
    word_count
  end
end

module BookKeeping
  VERSION = 1
end
