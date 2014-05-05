# Given a 3 or 4 digit number with distinct digits, return a sorted array
# of all the unique numbers than can be formed with those digits.

# Example:
# Given: 123
# Return: [123, 132, 213, 231, 312, 321]

def number_shuffle(number)
  # get the number of combinations that are possible
  no_of_combinations = number.to_s.size == 3 ? 6 : 24

  # get the number into an array
  digits = number.to_s.split(//)

  # create an empty array to house the results
  combinations = []

  # keep pushing shuffled combinations into 'combinations' until
  # the number of unique combinations matches the number of potential combinations
  combinations << digits.shuffle.join.to_i while combinations.uniq.size!=no_of_combinations

  # return the sorted array of unique combinations
  combinations.uniq.sort

end

puts number_shuffle(123)
