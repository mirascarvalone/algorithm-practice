# Write a function that takes two strings as arguments and returns a string containing only the characters found in both strings. Write 2 versions – one that is O(n) and one that is O(n^2).

# O(N)
def common_char(string1,string2)
  common_characters = []
  string1_characters = string1.split("")
  string2_characters = string2.split("")
  string_1_char_count = Hash.new(0)
  string1_characters.each do |letter|
    string_1_char_count[letter] += 1
  end
  string_2_char_count = Hash.new(0)
  string2_characters.each do |letter|
    string_2_char_count[letter] += 1
  end
  string_1_char_count.each do |letter,count|
    if string_2_char_count[letter] > 0
      common_characters.push(letter)
    end
  end
  common_characters.join("")
end

# O(N^2)
def common_char(string1,string2)
  string1_characters = string1.split("")
  string2_characters = string2.split("")
  common_characters = []
  string1_characters.each do |letter|
    if string2_characters.include?(letter)
      common_characters.push(letter)
    end
  end
  common_characters.uniq.join("")
end
