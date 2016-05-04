def selection_sort(array)
  for i in 0..array.length-1
    min = i
    for j in i+1..array.length-1
      if array[j] < array[min]
        min = j
      end
    end
    if i != min
      temp = array[i]
      array[i] = array[min]
      array[min] = temp
    end
  end
  array
end