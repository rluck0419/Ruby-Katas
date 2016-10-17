class Crypto
  def initialize(text)
    @text = text;
  end

  def normalize_plaintext
    @text = @text.downcase.gsub(/[^a-z\d]/, '')
  end

  def size
    self.normalize_plaintext
    Math.sqrt(@text.length).ceil
  end

  def plaintext_segments(out = [])
    row = self.size
    length = @text.length
    i = 0
    j = row - 1
    while length > 0
      out << @text[i..j]
      length -= row
      i += row
      j += row
    end
    out
  end
end
