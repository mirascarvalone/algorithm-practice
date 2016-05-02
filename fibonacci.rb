# Write a function to compute the nth fibonacci number

# Recursive:
def fibonacci(n)
  if n <= 1
    n
  else
    fibonacci(n-1) + fibonacci(n-2)
  end
end

# Iterative:
def fibonacci(n)
  fibonacci_array = [0,1]
  for i in 2..n
    fibonacci_array.push(fibonacci_array[i-1] + fibonacci_array[i-2])
  end
  fibonacci_array[n]
end