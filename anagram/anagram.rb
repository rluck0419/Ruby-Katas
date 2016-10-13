class Anagram
  def initialize(word)
    @word = word.downcase
  end

  def match(words)
    words.select { |w| anagram?(w.downcase) }
  end

  def anagram?(word)
    word != @word && word.chars.sort == @word.chars.sort
  end
end
