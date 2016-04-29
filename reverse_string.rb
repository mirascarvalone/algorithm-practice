# Write a function that takes a string as input and returns the string reversed.

def reverse_string(s)
  array = s.split("")
  array_dup = array.dup
  array.each_with_index do |element,index|
    array[index] = array_dup[array_dup.length-1-index]
  end
  array.join("")
end
