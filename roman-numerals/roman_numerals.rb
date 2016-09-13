class Integer
  ROMAN_NUMBERS = {
    M: 1000,
    CM: 900,
    D: 500,
    CD: 400,
    C: 100,
    XC: 90,
    L: 50,
    XL: 40,
    X: 10,
    IX: 9,
    V: 5,
    IV: 4,
    I: 1
  }

  def to_roman
    number = self
    roman_numeral = ""

    ROMAN_NUMBERS.each do |roman, num|
      roman_numeral << roman.to_s * (number / num)
      number = number % num
    end

    roman_numeral
  end
end

module BookKeeping
  VERSION = 2
end
