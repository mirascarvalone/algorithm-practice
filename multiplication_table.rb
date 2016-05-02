# Print out a multiplication table

def multiplication_table(n)
  for i in 1..n
    for j in 1..n
      print i*j
    end
    puts "\n"
  end
end