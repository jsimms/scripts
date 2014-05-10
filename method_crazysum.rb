# Write a method named crazy_sum(numbers) that takes an array of numbers.
# crazy_sum should multiply each number in the array by its position in the array,
# and return the sum.

def crazy_sum(numbers)
  # can't use index, so instead, create a new array of indexes
  numbers_index = []
  numbers.each_index { |x| numbers_index.push x }

  # then multiply the two arrays together.
  sum = (0...numbers.length).inject(0) {|sum, i| sum + numbers[i]*numbers_index[i]}
end

puts crazy_sum([2])
puts crazy_sum([2,3])
puts crazy_sum([2,3,5])
puts crazy_sum([2,3,5,2])
