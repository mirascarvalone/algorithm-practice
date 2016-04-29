# Find sentence containing largest number of words in given text (split at dots, question marks, exclamation marks) and return number of words

def largest_number_of_words(s)
  if s == ""
    0
  else
    array = s.gsub("!", ".").gsub("?", ".").split(".")

    longest_string = []
    array.each do |sentence|
      longest_string.push(sentence.split(" ").length)
    end

    longest_string.max
  end
end