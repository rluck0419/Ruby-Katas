class Integer
  ROMAN_NUMBERS = {
    1000 => "M",
     900 => "CM",
     500 => "D",
     400 => "CD",
     100 => "C",
      90 => "XC",
      50 => "L",
      40 => "XL",
      10 => "X",
       9 => "IX",
       5 => "V",
       4 => "IV",
       1 => "I",
  }

  def to_roman
    number = self
    roman_numeral = ""

    ROMAN_NUMBERS.each do |num, roman|
      roman_numeral << roman * (number / num)
      number = number % num
    end

    roman_numeral
  end
end

module BookKeeping
  VERSION = 2
end
