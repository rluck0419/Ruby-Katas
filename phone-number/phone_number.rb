class PhoneNumber
  def initialize(num)
    @num = num

    if ('a'..'z').any? { |x| @num.include?(x) }
      return '0000000000'
    end

    @num.gsub!(/\D/, "")
    if @num[0] == '1' && @num.length == 11
      @num = @num[1..-1]
    end
  end

  def to_s
    "(#{@num[0..2]}) #{@num[3..5]}-#{@num[6..-1]}"
  end

  def number
    if @num.length == 10
      @num
    else
      '0000000000'
    end
  end

  def area_code
    @num[0..2]
  end
end
