class Bob
  def hey(remark)
    if remark.include?("?")
      if remark.match(/[a-z]/)
        'Sure.'
      else
        'Whoa, chill out!'
      end
    else
      if remark.match(/[a-z]/)
        'Whatever.'
      else
        'Whoa, chill out!'
      end
    end
  end
end
