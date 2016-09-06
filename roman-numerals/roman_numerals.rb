class Integer
  def to_roman
    remainder = self
    result = ""

    if remainder - 1000 >= -100
      3.times do
        if remainder >= 1000
          remainder -= 1000
          result += "M"
        end
      end

      if remainder - 1000 > -100
        remainder -= 900
        result += "CM"
      end
    end

    if remainder - 500 >= -100
      if remainder >= 500
        remainder -= 500
        result += "D"
      end

      if remainder - 500 >= -100
        remainder -= 400
        result += "CD"
      end
    end

    if remainder - 100 >= -50
      3.times do
        if remainder >= 100
          remainder -= 100
          result += "C"
        end
      end

      if remainder - 100 > -10
        remainder -= 90
        result += "XC"
      end
    end

    if remainder - 50 >= -10
      if remainder >= 50
        remainder -= 50
        result += "L"
      end

      if remainder - 50 > -10
        remainder -= 40
        result += "XL"
      end
    end

    if remainder - 10 >= -1
      3.times do
        if remainder >= 10
          remainder -= 10
          result += "X"
        end
      end

      if remainder - 10 == -1
        remainder -= 10
        result += "IX"
      end
    end

    if remainder - 5 >= -1
      if remainder - 5 >= 0
        remainder -= 5
        result += "V"
      else
        remainder -= 5
        result += "IV"
      end
    end

    result += ("I" * remainder) if remainder > 0
    result
  end
end

module BookKeeping
  VERSION = 2
end
