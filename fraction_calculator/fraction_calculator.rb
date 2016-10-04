class FractionCalculator
  def self.add(str1, str2, sign=1)
    nums = sanitize(str1, str2)

    n = nums[0] * nums[3] + (nums[2] * nums[1] * sign)
    d = nums[1] * nums[3]

    reduce(n, d)
  end

  def self.subtract(str1, str2)
    add(str1, str2, -1) # flag for subtraction via add()
  end

  def self.multiply(str1, str2, divide=0)
    nums = sanitize(str1, str2)

    n = nums[0] * nums[2 + divide]
    d = nums[1] * nums[3 - divide]

    reduce(n, d)
  end

  def self.divide(str1, str2)
    multiply(str1, str2, 1) # flag for division via multiply()
  end

  private

  def self.sanitize(fraction1, fraction2)
    nums = fraction1.split("/") + fraction2.split("/")
    nums.map! { |n| n.to_i }

    if nums[1].zero? || nums[3].zero?
      raise ArgumentError, "Invalid denominator (cannot divide by 0)"
    else
      # returns fractions "n1/d1" & "n2/d2" as an array of [n1, d1, n2, d2]
      nums
    end
  end

  def self.reduce(n, d) # reduce fraction via greatest common divisor
    divisor = gcd(n, d)
    n /= divisor
    d /= divisor

    "#{n}/#{d}"
  end

  def self.gcd(a, b)
    if b.zero?
      a
    else
      gcd(b, a % b)
    end
  end
end
