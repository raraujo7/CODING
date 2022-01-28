def louchebemize(sentence)
  # TODO: implement your louchebem translator
  result_elements = []
  words = sentence.downcase.split(/\b/)
  words.each do |word|
    if word =~ /\W/
      result_elements << word
    else
      result_elements << louchebemize_word(word)
    end
  end
  return result_elements.join
end

# Check if it is vowel
def vowel?(letter)
  %w[a e i o u].include? letter
end

# Check
def louchebemize_word(word)
  randow_suffix = %w[em é ji oc ic uche ès].sample
  # return the word not translated if word contain only one letter
  return word if word.size == 1

  # check if the first letter of word is vowel
  if vowel? word[0]
    "l#{word}#{randow_suffix}"
  else
    first_vowel_index = word.chars.index { |letter| vowel? letter }
    begin_part = word[0...first_vowel_index]
    end_part = word[first_vowel_index...word.size]
    "l#{end_part}#{begin_part}#{randow_suffix}"
  end
end
