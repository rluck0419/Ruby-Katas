class Anagram
  def initialize(str)
    @word = str.downcase
  end

  def match(words)
    words.select { |w| anagram?(w.downcase) }
  end

  def anagram?(word)
    word != @word && word.chars.sort == @word.chars.sort
  end
end
