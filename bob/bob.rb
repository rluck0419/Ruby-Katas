class Bob
  def hey(remark)
    return 'Fine. Be that way!' if remark.strip.length == 0
    if remark[-1] == "?"
      if remark.match(/[a-z]|\d/)
        'Sure.'
      else
        'Whoa, chill out!'
      end
    else
      if remark.match(/[a-z]/) || remark.match(/\d/) && !remark.match(/[A-Z]/)
        'Whatever.'
      else
        'Whoa, chill out!'
      end
    end
  end
end
