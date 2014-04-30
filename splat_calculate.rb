# Write three methods: add, subtract, caclulate.
# You should be able to add or subtract by calling calculate with parameters.

def add(*numbers)
  numbers.inject(0) { |sum, number| sum + number }
end

def subtract(*numbers)
  numbers.inject(0) { |difference, number| difference - number }
end

def calculate(*numbers)
  # Get the params figured out.
  if numbers.last.is_a?(Hash)
    params = numbers.pop
  else
    params = {}
  end
  # Do the right math
  result = add(*numbers)
  # TODO - figure out how to freaking call the right method. 
  #result = add(*numbers) if params[:add]
  #result = subtract(*numbers) if operation[:subtract]
end

puts calculate(1,2,3,4,5, :operation => :add)
