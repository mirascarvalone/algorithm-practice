def binary_search(array,elt)
  start = 0
  stop = array.length-1
  middle = (start+stop)/2

  while(array[middle] != elt && start < stop)
    if elt < array[middle]
      stop = middle - 1
    else
      start = middle + 1
    end

    middle = (stop+start)/2
  end

  if array[middle] != elt
    -1
  else
    middle
  end
end