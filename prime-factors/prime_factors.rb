require 'prime'

class PrimeFactors
  def self.for(num)
    Prime.prime_division(num).flat_map { |factor, power| [factor] * power }
  end
end
