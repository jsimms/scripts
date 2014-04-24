# Find if a given number is a Kaprekar number.
# In short, for a Kaprekar number k with n-digits, 
# if you square it and add the right n digits to the left n or n-1 digits, the resultant sum is k. 

# Admitedly, this is Ruby Monk's code. I succumbed to viewing the solution here. 
# This excercise is a fuckton easier if you remember that strings are basically just ARRAYS of characters.
# Also, I didn't understand the math behind a kaprekar number, so understanding why the first half needed to be n or n-1 was lost on me. 


def kaprekar?(k)	
  k_digits = k.to_s.size
  square = (k ** 2).to_s
  
  second_half = square[-k_digits..-1]
  first_half = square.size.even? ? square[0..k_digits-1] : square[0..k_digits-2]
  
  k == first_half.to_i + second_half.to_i 
end 

kaprekar?(9)