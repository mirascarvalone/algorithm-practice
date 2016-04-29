def prime_factors(number)
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

  factor_array
end