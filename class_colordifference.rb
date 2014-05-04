# 1. Create a class called color that has RGB values
# 2. Create a method that determines the brightness index of itself,
# 3. Create a method that determines the brightness difference between itself and another instance of the class,
# 4. Create a method that determines the hue difference between itself and another instance of the class,
# 5. Create a method that determines if there is enough contrast between itself and another instance of the class. 

class Color
  attr_reader :r, :g, :b
  def initialize(r, g, b)
    @r = r
    @g = g
    @b = b
  end

  def brightness_index
    ( 299*r + 587*g + 114*b) / 1000
  end

  def brightness_difference(another_color)
    (brightness_index - another_color.brightness_index).abs
  end

  def hue_difference(another_color)
    (r - another_color.r).abs + (g - another_color.g).abs + (b - another_color.b).abs
  end

  def enough_contrast?(another_color)
    if brightness_difference(another_color) > 125 && hue_difference(another_color) > 500
      true
    else
      false
    end
  end
end
