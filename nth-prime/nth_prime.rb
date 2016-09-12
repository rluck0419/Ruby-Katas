class Prime
  def self.nth(n)
    raise ArgumentError unless n > 0
    prime = 2
    primes = [prime]
    unless n == 1
      loop do
        prime += 1
        factors = (2..prime-1).to_a
        is_prime = true
        factors.each do |f|
          is_prime = false if prime % f == 0
        end
        primes << prime if is_prime
        break if primes.length == n
      end
    end
    primes[n-1]
  end
end
