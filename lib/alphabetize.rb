ESPERANTO_ALPHABET = " abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
ESPERANTO_CHARS = ESPERANTO_ALPHABET.each_char.with_index.to_a.to_h

def esperanto_map(arr)
	arr.collect { |c| ESPERANTO_CHARS[c]}
end

def alphabetize(arr)
	new_arr = arr.collect { |phrase| phrase.chars }
	swap = true
	while swap
		swap = false
		(new_arr.length - 1).times do |x|
			x_arr = esperanto_map(new_arr[x])
			x1_arr = esperanto_map(new_arr[x+1])
			lesser = [x_arr.length, x1_arr.length].min
			i = 0
			while i < lesser
				if x_arr[i] > x1_arr[i]
					new_arr[x], new_arr[x+1] = new_arr[x+1], new_arr[x]
					swap = true
					break
				elsif x_arr[i] < x1_arr[i]
					break
				else
					i += 1
				end
			end
		end
	end
	new_arr.collect { |phrase| phrase.join }
end