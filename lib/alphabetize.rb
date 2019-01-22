ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

def alphabetize(arr)
  arr.sort_by do |word|
    word.chars.collect do |alphabet|
      ESPERANTO_ALPHABET.index(alphabet)
    end
  end
end