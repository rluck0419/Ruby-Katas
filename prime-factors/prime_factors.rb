class PrimeFactors
  def self.for(num)
    output = []
    factor = 2
    while factor < num + 1
      if num % factor == 0
        if is_prime?(factor)
          output << factor
        end
        if num / factor == factor
          output << factor
        end
      end
      factor += 1
    end
    output
  end

  def self.is_prime?(num)
    true
  end
end
