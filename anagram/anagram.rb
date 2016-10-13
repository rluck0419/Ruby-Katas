class Anagram
  def initialize(word)
    @word = word.downcase
    @letters = @word.chars.map { |l| l }.sort
  end

  def match(words)
    words.map{ |word| word }.select { |w| anagram?(w, w.chars.map { |l| l.downcase }.sort) }
  end

  def anagram?(word, letters)
    word.downcase != @word && letters == @letters
  end
end
