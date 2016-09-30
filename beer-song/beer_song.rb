class BeerSong
  def verse(current)
    s, s2 = ''
    remaining = current - 1
    s = 's' if current > 1
    s2 = 's' if remaining != 1
    one = 'one'
    if remaining == 0
      remaining = 'no more'
      one = 'it'
    end
    "#{current} bottle#{s} of beer on the wall, #{current} bottle#{s} of beer.\n" \
      "Take #{one} down and pass it around, #{remaining} bottle#{s2} of beer on the wall.\n"
  end
end
