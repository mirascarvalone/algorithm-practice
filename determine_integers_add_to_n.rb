# Given an array of integers write a program that will determine if any two numbers add up to a specified number N

def add_to_n(integers, n)
  integers.each_with_index do |letter1, index1|
    integers[index1+1..-1].each do |letter2|
      if letter1 + letter2 == n
        return true
      end
    end
  end
  false
end
