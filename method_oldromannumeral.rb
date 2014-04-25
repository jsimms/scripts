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
  while number != 0

    m = number/1000
    numeral << "M"*m
    number = number%1000

    d = number/500
    numeral << "D"*d
    number = number%500

    c = number/100
    numeral << "C"*c
    number = number%100

    l = number/50
    numeral << "L"*l
    number = number%50

    x = number/10
    numeral << "X"*x
    number = number%10

    v = number/5
    numeral << "V"*v
    number = number%5

    i = number/1
    numeral << "I"*i
    number = number%1

    return numeral.join.to_s
  end


end

puts old_roman_numeral(9931)
