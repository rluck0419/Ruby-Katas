class Anagram
  def initialize(word)
    @letters = word.chars.map { |l| l.downcase }.sort
    @word = word.downcase
  end

  def match(words)
    words.select { |w| anagram?(w.downcase, w.chars.map { |l| l.downcase }.sort) }
  end

  def anagram?(word, letters)
    word != @word && letters == @letters
  end
end
