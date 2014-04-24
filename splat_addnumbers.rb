# An example of using the splat operator and the inject method. 
# Remember that arguments are passed as an array. So the splat operator indicates that there is a varying number of items in the array. 
# .inject puts an 'accumulator value' in there. Basically, it's the value that will change over time and be reused in each iteration of the block. 


def add(*numbers)
  numbers.inject { |sum, number| sum + number }
end

puts add(1)
puts add(1, 2)
puts add(1, 2, 3)
puts add(1, 2, 3, 4)

