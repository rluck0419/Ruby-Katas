class Anagram
  def initialize(word)
    @word = word.downcase
    @letters = @word.chars.map { |l| l }.sort
  end

  def match(words)
    words.select { |w| anagram?(w.downcase, w.downcase.chars.sort) }
  end

  def anagram?(word, letters)
    word != @word && letters == @letters
  end
end
