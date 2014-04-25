# NOT DONE, KEEP ON DOIN' 

=begin

  Write a method that when passed an integer between 1 and 3000 (or so)
  returns a string containing the proper old-school Roman numeral.

  In other words, old_roman_numeral 4 should return 'IIII'.

  Numerals for referece.
  I = 1 V = 5 X = 10 L = 50 C = 100 D = 500 M = 1000

  HINT: modulo and division will come in handy.
=end


def old_roman_numeral(number)
  numeral = []
  remaining = number
  while remaining != 0
    if number % 1000 == 0
      numeral << "M"*(number/1000)

    end
  end
  numeral
end

puts old_roman_numeral(4400)
