class Crypto
  def initialize(plain_text)
    @plain_text = plain_text
  end

  def normalize_plaintext()
    @plain_text.gsub(/[^A-Za-z0-9]/, '').downcase
  end

  def size
    Math.sqrt(normalize_plaintext.size).ceil
  end

  def plaintext_segments
    normalize_plaintext.scan(/.{1,#{size}}/)
  end

  def ciphertext
    get_cipher_array.join
  end

  def normalize_ciphertext
    get_cipher_array.join(' ')
  end

  private
  def get_cipher_array
    cipher_block = []
    (0..size).each do |index|
      nth_index_str = []
      plaintext_segments.each do |segment|
        nth_index_str << segment[index]
      end
      cipher_block << nth_index_str.join if !nth_index_str.join.empty?
    end
    cipher_block
  end
end
