# Taken from Chris Pine's Learn to Program sample problems.

def sort(ary)
  # By building a wrapper method, we make it so we don't have to provide an
  # empty array everytime we call sort.
  rec_sort ary, []
end

def rec_sort(unsorted, sorted)
  # If there's nothing to sort, just return the empty array
  if unsorted.length <= 0
    return sorted
  end
  # If ther array contains elements, get to sorting.
  smallest = unsorted.pop
  still_unsorted = []
  unsorted.each do |x|
    if x < smallest
      still_unsorted.push smallest
      smallest = x
    else
      still_unsorted.push x
    end
  end

  # Now, we've looped through all the elements of the array, and smallest
  # really will be the smallest. Everything else is still_unsorted.

  # Now, put the smallest into the sorted array.
  sorted.push smallest

  # And then do it all over again with the new 'unsorted' array that no longer
  # contains the shortest element from the previous 'unsorted' array
  rec_sort(still_unsorted, sorted)
end

puts sort(['this', 'is', 'a', 'weird', 'unsorted', 'array', 'totally', 'random'])
