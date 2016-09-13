class Prime
  def self.nth(n)
    fail ArgumentError if n < 1

    primes = [2, 3]

    i = primes.last + 2
    while primes.length < n
      primes << i if prime?(i, primes)
      i += 2
    end

    primes[n-1]
  end

  private

  def self.prime?(num, primes)
    primes.all? do |prime|
      return true if prime > Math.sqrt(num)
      num % prime != 0
    end
  end
end
