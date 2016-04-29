# Given an integer (signed 32 bits), write a function to check whether it is a power of 4.

# Slow recursive way
def is_power_of_four(num)
  if num % 4 == 0
    if num / 4 != 1
      is_power_of_four(num/4)
    else
      return true
    end
    return true
  else
    return false
  end
end

# using prime factorization - number would only have factors of 2 an even # of times
def is_power_of_four(number)
  factor_array = []

  i = 2
  while i <= number
    if number % i == 0
      factor_array.push(i)
      number /= i
    else
      i +=1
    end
  end

  if factor_array.uniq == [2] && factor_array.length % 2 == 0
    return true
  else
    return false
  end
end

p is_power_of_four(65)