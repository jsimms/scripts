# Write a shuffle method that takes an array and returns a totally
# shuffled version without using the .shuffle method.

def shuffle(ary)
  rec_shuffle(ary, [])
end

def rec_shuffle(unshuffled, shuffled)
  # if array is only 0, just return shuffled
  if unshuffled.length <= 0
    return shuffled
  end
  # Determine the length of the unshuffled array
  # and randomly select an index in it.
  # using .sample won't work as we need to be able to delete the index
  random = unshuffled[rand(unshuffled.length)]

  # Now push the random number to shuffled, and delete it from unshuffled
  shuffled.push random
  unshuffled.delete random

  # Now call the method recursively, so it keeps shuffling until
  # unshuffled.length = 0
  rec_shuffle(unshuffled, shuffled)

end

puts shuffle([1, 2, 3, 4, 5, 6])
