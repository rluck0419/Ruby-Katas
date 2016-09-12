class Prime
  def self.nth(n)
    raise ArgumentError unless n > 0
    prime = 2
    primes = [prime]
    until primes.length == n
      prime += 1
      is_prime = true
      primes.each do |f|
        is_prime = false if prime % f == 0
      end
      primes << prime if is_prime
    end
    primes[n-1]
  end
end
