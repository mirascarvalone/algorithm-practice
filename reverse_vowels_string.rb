# Write a function that takes a string as input and reverse only the vowels of a string.

def reverse_vowels(s)
  array = s.split("")
  vowels = ['a','e','i','o','u']
  vowel_array = []
  array.each do |letter|
    if vowels.include?(letter)
      vowel_array.push(letter)
    end
  end

  array.each_with_index do |letter, index|
    if vowels.include?(letter)
      array[index] = vowel_array.reverse[0]
      vowel_array.pop
    end
  end

  array.join("")
end