class Grains
  def self.square(n)
    2 ** (n - 1)
  end

  def self.total
    remaining = 64
    grains = 0
    while remaining > 0
      grains += self.square(remaining)
      remaining -= 1
    end
    grains
  end
end
