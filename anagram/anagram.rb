class Anagram
  def initialize(word)
    @letters = word.chars.map { |l| l.downcase }.sort
    @word = word
  end

  def match(words)
    words.select { |w| anagram?(w, w.chars.map { |l| l.downcase }.sort) }
  end

  def anagram?(word, letters)
    letters == @letters && word.downcase != @word.downcase
  end
end
