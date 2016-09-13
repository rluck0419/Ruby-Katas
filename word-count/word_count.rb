class Phrase
  def initialize(phrase)
    @words = phrase.downcase.gsub(/[^a-zA-Z\d']/, " ").split(" ").map do |w|
      w = w.gsub("'", "") if w[0] == "'" && w[-1] == "'"
      w
    end
  end

  def word_count
    word_count = {}
    @words.map do |w|
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
