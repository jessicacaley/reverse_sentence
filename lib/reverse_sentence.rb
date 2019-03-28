# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
def reverse_sentence(my_sentence)
  string_reverse(reverse_words(my_sentence))
end

def reverse_words(my_words)
  return nil if my_words == nil
  i = 0
  start_index = 0
  my_words.length.times do
    if my_words[i] == " "
      my_words = reverse_word(my_words, start_index, i - 1)
      start_index = i + 1
    end
    i += 1
  end

  my_words = reverse_word(my_words, start_index, i - 1) # for last word

  return my_words
end

def reverse_word(my_words, start_index, end_index)
  ((end_index - start_index) / 2 + 1).times do
    placeholder = my_words[start_index]
    my_words[start_index] = my_words[end_index]
    my_words[end_index] = placeholder
    start_index += 1
    end_index -= 1
  end
  return my_words
end

def string_reverse(my_string)
  return nil if my_string == nil
  (my_string.length / 2).times do |i|
    temp = my_string[my_string.length - (i + 1)]
    my_string[my_string.length - (i + 1)] = my_string[i]
    my_string[i] = temp
  end
  return my_string
end
