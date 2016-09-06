class Complement
  def self.of_dna(str)
    str.chars.map do |char|
      return "" unless %w(A T G C).include?(char)

      case char
      when "A" then "U"
      when "T" then "A"
      when "G" then "C"
      when "C" then "G"
      end

    end.join
  end
end

module BookKeeping
  VERSION = 4
end
