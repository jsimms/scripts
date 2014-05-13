# take a number, like 22, and return the English version of it - 'twenty-two'
# Only worry about integers from 0-100


def english_number(integer)
  # check if number is an integer, or if it is zero
  if integer < 0
    return "Please enter a number that is not negative"
  end
  if integer == 0
    return "zero"
  end

  string = "" # <- this is what we return


  # assign all potential digits
  ones = [ 'one',  'two',  'three',
           'four', 'five', 'six',
           'seven','eight','nine' ]

  tens = [ 'ten',    'twenty',  'thirty'
           'fourty', 'fifty',   'sixty'
           'seventy','eighty',  'ninety']

  teenagers  = ['eleven',    'twelve',   'thirteen',
                'fourteen',  'fifteen',  'sixteen',
                'seventeen', 'eighteen', 'nineteen']

  remaining = integer
  write = left/100
  remaining =  remaining - left*100

  if write > 0
    # call it all ova again! Recursion!
    hundreds = english_number(write)
    #pick up here...nodding off 

end


english_number(0)
