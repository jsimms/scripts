# take a number, like 22, and return the English version of it - 'twenty-two'
# Only worry about integers from 0-100


def english_number(number)
  # check if number is an integer, or if it is zero
  if number < 0
    return "Please enter a number that is not negative"
  end
  if number == 0
    return "zero"
  end

  string = "" # <- this is what we return


  # assign all potential digits
  ones_place = [  'one',  'two',  'three',
                  'four', 'five', 'six',
                  'seven','eight','nine'    ]

  tens = [ 'ten',    'twenty',  'thirty'
           'fourty', 'fifty',   'sixty'
           'seventy','eighty',  'ninety'  ]

  teenagers  = [  'eleven',    'twelve',   'thirteen',
                  'fourteen',  'fifteen',  'sixteen',
                  'seventeen', 'eighteen', 'nineteen'  ]

  # left will be how much of the number we still have to write out
  # write is the part we are 'writing' out right now, starting with the 100s

  left = number
  write = left/100

  left =  left - write*100

  if write > 0
    # call it all ova again! Recursion!
    hundreds = english_number(write)
    string = string + hundreds + " hundred"

    if left > 0
      string = string + " "
    end

  end

  write = left/10 # movin' on to the tens
  left = left - write*10

  if write > 0
    if ((write == 1) and (left>0))
      string = string + teenagers[left-1]
      left = 0
    # wtf, still zonked ... can't do this stuff at night. 


end


english_number(0)
