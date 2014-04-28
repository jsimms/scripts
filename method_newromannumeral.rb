# ehhhh, a little buggy. Need to finish.

=begin

  Write a method that when passed an integer between 1 and 3000 (or so)
  returns a string containing the proper new-school Roman numeral.

  In other words, new_roman_numeral 4 should return 'IV'.

  Numerals for referece.
  I = 1 V = 5 X = 10 L = 50 C = 100 D = 500 M = 1000

  HINT: modulo and division will come in handy.
=end


def new_roman_numeral(number)

  numeral = ""

  # Calculate the number of Roman numeral digits
  thous = number/1000
  hunds = number%1000/100
  tens = number%100/10
  ones = number%10

  # Go through each digit and determine how to display it
  numeral << "M"*thous

  if hunds == 9
    numeral << "CM"
  elsif hunds == 4
    numeral << "CD"
  else
    numeral << "D" * (number%1000/500)
    numeral << "C" * (number%500/100)
  end

  if tens == 9
    numeral << "XC"
  elsif tens == 4
    numeral << "XL"
  else
    numeral << "L" * (number%100/50)
    numeral << "X" * (number%50/10)
  end

  if ones == 9
    numeral << "IX"
  elsif ones == 4
    numeral << "IV"
  else
    numeral << "V" * (number%10/5)
    numeral << "I" * (number%5/1)
  end

  numeral

end

puts new_roman_numeral(7777)
