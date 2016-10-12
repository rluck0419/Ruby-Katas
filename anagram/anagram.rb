class Anagram
  def initialize(word)
    @letters = word.chars.sort
  end

  def match(words)
    result = []
    words.map do |w|
      if w.chars.sort == @letters
        result << w
      end
    end
    result.compact
  end
end
