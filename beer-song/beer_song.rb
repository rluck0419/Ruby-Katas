class BeerSong
  def verse(n)
    s = ''
    s = 's' if n - 1 > 1
    "#{n} bottles of beer on the wall, #{n} bottles of beer.\n" \
      "Take one down and pass it around, #{n - 1} bottle#{s} of beer on the wall.\n"
  end
end
