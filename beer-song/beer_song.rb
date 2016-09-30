class BeerSong
	def verse(num)
		"#{bottles(num).sub(/./){|s| s.upcase} } of beer on the wall, #{bottles(num)} of beer.\n" +
			"#{pass_it_around(num)}, #{bottles(num-1)} of beer on the wall.\n"
	end

	def verses(first, last)
		(last..first).map{ |v| verse(v) }.reverse.join("\n")
	end

	def lyrics()
		verses(99, 0)
	end

	private def pass_it_around(num)
		if num == 0
			"Go to the store and buy some more"
		else
			"Take #{num == 1 ? 'it' : 'one'} down and pass it around"
		end
	end

	private def bottles(num)
		num = 99 if num == -1
		"#{num == 0 ? 'no more' : num} bottle#{num == 1 ? '' : 's'}"
	end
end

module BookKeeping
  VERSION = 2
end
