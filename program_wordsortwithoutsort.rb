#WIP

# Take an array of words and sort it without using Ruby's sort method.

def sort(sort_me)
  sorted = []

  # Loop through the unsorted array and find the 'shortest' word
  shortest = sort_me[0]
  sort_me.each do |x|
    if x < shortest
      shortest = x
    end
  end

  # Push the 'shortest' word into a new 'sorted' array
  sorted << shortest

  # Remove shortest from the usorted array
  # ? ?
  
end

puts sort(['this', 'is', 'a', 'weird', 'unsorted', 'array', 'totally', 'random'])
