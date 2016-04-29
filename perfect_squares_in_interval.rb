# Find the number of perfect squares between two integers (including endpoints)

include Math

def perfect_squares(a, b)
  counter = 0
  start_interval = sqrt(a).ceil
  end_interval =  sqrt(b).floor
  for i in start_interval..end_interval
    if i**2 >= a && i**2 <= b
      counter +=1
    end
  end
  counter
end

# Performs more slowly
def perfect_squares(a, b)
  counter = 0
  for i in a..b
    if sqrt(i).floor == sqrt(i)
      counter +=1
    end
  end
  counter
end
