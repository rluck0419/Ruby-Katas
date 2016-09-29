class ETL
  def self.transform(old)
    old.each_with_object({}) do |(k,v),output|
      v.each { |x| output[x.downcase] = k }
    end
  end
end
