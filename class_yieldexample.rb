# Given a custom class MyArray,
# write a 'sum' method that takes a block parameter.

class MyArray
  attr_reader :array #allows us to read array instance variable in methods

  def initialize(array)
    @array = array
  end

  def sum(initial_value = 0) # Sets a default value
    if block_given? # loop through the array, yielding to the block, and sum the results
      result = initial_value
      array.each { | n | result += yield(n) }
      result
    else # sum all the elements in the array
      array.inject(initial_value) { |initial_value, number | initial_value + number }
    end
  end

end


# Example
my_array = MyArray.new([1, 2, 3])

puts my_array.sum # Should give 6
puts my_array.sum(10) # Should give 16
puts my_array.sum(0) {|n| n ** 2 } # Should give 14
