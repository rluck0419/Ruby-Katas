class Hamming
  def self.compute(x, y)
    raise ArgumentError if x.length != y.length
    count = 0
    x.length.times do |i|
      count += 1 unless x[i] == y[i]
    end
    count
  end
end
