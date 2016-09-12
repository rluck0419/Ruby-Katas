class Prime
  def self.nth(n)
    # raise error if the argument is less than 1
    raise ArgumentError unless n > 0

    # initialize first prime and primes array
    prime = 2
    primes = [prime]

    until primes.length == n
      # initializing for prime test...
      prime += 1
      is_prime = true

      # check primes for possible factors...
      primes.each do |f|
        is_prime = false if prime % f == 0
        break if is_prime == false
      end

      # add to primes array if no factors are found...
      primes << prime if is_prime
    end

    # return last prime number added to array (n)
    primes.last
  end
end
