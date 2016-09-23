class PrimeFactors
  def self.for(num)
    output = []
    factor = 2

    while num > 1
      if num % factor == 0
        output << factor
        num /= factor
      else
        factor += 1
      end
    end

    output
  end
end
