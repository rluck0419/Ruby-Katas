class Pangram
  def self.is_pangram?(str)
    ('a'..'z').all? { |x| str.downcase.include?(x) }
  end
end

module BookKeeping
  VERSION = 2 # Where the version number matches the one in the test.
end
