class Anagram
  def initialize(word)
    @letters = word.chars.sort
    @word = word
  end

  def match(words)
    result = []
    words.map do |w|
      if w.chars.sort == @letters && w != @word
        result << w
      end
    end
    result.compact
  end
end
