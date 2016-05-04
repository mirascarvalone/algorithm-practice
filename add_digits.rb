# Given a non-negative integer num, repeatedly add all its digits until the result has only one digit.

# Using recursion
def add_digits(num)
  array = num.to_s.split("")
  array.map! do |num|
    num.to_i
  end
  sum = array.reduce(:+)
  if sum >= 10
    add_digits(sum)
  else
    sum
  end
end

# O(1)
def add_digits(num)
  if num == 0
    num
  else
    if num % 9 == 0
      9
    else
      num % 9
    end
  end
end