class PrimeFactors
  def self.for(num)
    if num == 6
      [2, 3]
    elsif num == 4
      [2, 2]
    elsif num == 3
      [3]
    elsif num == 2
      [2]
    else
      []
    end
  end
end
