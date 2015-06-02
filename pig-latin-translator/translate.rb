def translate(sentence)
  word_array = sentence.split  # put sentence into array
  puts sentence
  pig_sentence = word_array.map { |word| pig_word(word)}
  pig_sentence.join(" ")
end
def pig_word(word)
  if word.start_with?('a','e','i','o','u')
    word + 'way'
  else
	    first_vowel = word.index(/[aeiou]/)
	    chopped_word = word[0..( first_vowel - 1 )]
	    word[first_vowel..-1] + chopped_word + 'ay'
	end
end

input = ARGV.join(" ")
puts translate(input)

# #pseudo
# if word begins with vowel
#   append way
# else word begins with consonant or consonant cluster  - catch with word index(vowels)
#   move consonant(s) to end of word and append ay
# end

# If the word begins with a consonant or consonant cluster,
# move the consonant(s) to the end of the word and append ay
# (e.g. happy becomes appyhay, child becomes ildchay).
#
# If the word begins with a vowel
# append way to the end of the word
# (e.g. egg becomes eggway).
