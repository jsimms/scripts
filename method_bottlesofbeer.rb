def bottles_of_beer(number)
  bottlecount = number
  number_word = english_number(bottlecount)

  while bottlecount > 0
    puts "<takes a breath>"
    puts "#{number_word} bottles of beer on the wall..."
    puts "#{number_word} bottles of beer!"
    puts "take one down, pass it around..."
    bottlecount -= 1
    number_word = english_number(bottlecount)
    puts "#{number_word} bottles of beer on the wall..."
  end
end

def english_number(number)
  if number < 0
    return "please provide a positive number"
  end
  if number == 0
    return 'zero'
  end

  num_string = ""

  ones_place = ['one','two','three','four','five','six','seven','eight','nine']
  tens_place = ['ten','twenty','thirty','fourty','fifty','sixty','seventy','eighty','ninety']
  teenagers = ['eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']
  zillions = [['hundred',   2],
              ['thousand',  3],
              ['million',   6],
              ['billion',   9],
              ['trillion', 12]]

  # Figure out the zillions
  left = number
  while zillions.length > 0
    zil_pair = zillions.pop
    zil_name = zil_pair[0]
    zil_base = 10 ** zil_pair[1]
    write = left/zil_base
    left = left - write*zil_base
    if write > 0
      prefix = english_number(write)
      num_string = num_string + prefix + " " + zil_name
      if left > 0
        num_string = num_string + " "
      end
    end
  end

  # Figure out the tens
  write = left/10
  left = left - write*10
  if write > 0
    if ((write==1) and (left>0))
      num_string = num_string + teenagers[left-1]
      left = 0
    else
      num_string = num_string + tens_place[write-1]
    end
    if left > 0
      num_string = num_string + '-'
    end
  end

  # Figure out the ones
  write = left
  left = 0
  if write > 0
    num_string = num_string + ones_place[write-1]
  end
  num_string
end

bottles_of_beer(9999)
