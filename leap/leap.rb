class Year
  def self.leap?(year)
    unless year % 100 == 0
      year % 4 == 0
    end
  end
end
