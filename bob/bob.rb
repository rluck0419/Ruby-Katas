class Bob
  def hey(remark)
    return 'Fine. Be that way!' if remark.strip.length == 0
    if low_energy?(remark)
      if remark[-1] == "?"
        'Sure.'
      else
        'Whatever.'
      end
    else
      'Whoa, chill out!'
    end
  end

  def low_energy?(string)
    string.match(/[a-z]/) || string.match(/\d/) && !string.match(/[A-Z]/)
  end
end
