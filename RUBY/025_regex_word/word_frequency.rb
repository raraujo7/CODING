def load_stop_words(stop_words_file_name)
  File.open(stop_words_file_name, "r").reduce([]) do |stop_words, line|
    stop_words << line.chomp
  end
end

def most_common_words(file_name, stop_words_file_name, number_of_word)
  # TODO: return hash of occurences of number_of_word most frequent words
  counter = Hash.new(0)
  stop_words = load_stop_words(stop_words_file_name)

  File.open(file_name, "r").each_line do |line|
    line.chomp.downcase.split(/\W+/).each do |word|
      counter[word] += 1 unless stop_words.include? word
    end
  end
  counter.sort_by { |_k, v| -v }[0..(number_of_word - 1)].to_h
end
