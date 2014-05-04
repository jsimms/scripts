# This is an example of using yield to send one block to a method.

def calculate(a,b)
  yield(a,b)
end

calculate(2, 3) { |a, b| a + b }
calculate(2, 3) { |a, b| a - b }
calculate(2, 3) { |a, b| a * b }
