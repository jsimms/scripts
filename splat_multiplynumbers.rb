=begin

 Another example of using the splat operator and the inject method.
 Remember that arguments are passed as an array. So the splat operator
 indicates that there is a varying number of items in the array.
 .inject puts an 'accumulator value' in there. Basically, it's the value that
 will change over time and be reused in each iteration of the block.

 Note that if you don't give the inject method an argument, it uses the first
 value provided in the list of values sent to the parameters. 

=end

def multiply(*numbers)
	numbers.inject { |product, n| product * n }
end

puts multiply(1)
puts multiply(1, 2)
puts multiply(1, 2, 3)
puts multiply(1, 2, 3, 4)
