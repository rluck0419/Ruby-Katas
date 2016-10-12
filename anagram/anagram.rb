class Anagram
  def initialize(word)
    @letters = word.chars
    @word = word
  end

  def match(words)
    result = []
    @letters = @letters.map { |l| l.downcase }.sort
    words.map do |w|
      letters = w.chars.map { |l| l.downcase }.sort
      result << w if letters == @letters && w.downcase != @word.downcase
    end
    result.compact
  end
end
