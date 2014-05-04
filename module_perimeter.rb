# Create an example module called perimeter,
# and use it in a rectangle and square class

module Perimeter
  def perimeter
    sides.inject(0) { |sum, side| sum + side }
  end
end

class Rectangle
  include Perimeter
  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

  def sides
    [@length, @breadth, @length, @breadth]
  end
end

class Square
  include Perimeter
  def initialize(side)
    @side = side
  end

  def sides
    [@side, @side, @side, @side]
  end
end

puts Rectangle.new(2, 3).perimeter
puts Rectangle.new(5, 10).perimeter
puts Square.new(5).perimeter
puts Square.new(15).perimeter
