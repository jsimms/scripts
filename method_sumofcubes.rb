#Compute the sum of cubes for a given range a through b.

def sum_of_cubes(a, b)
  i = a
  sum = 0
  while i <= b 
    sum = sum + (i*i*i)
    i += 1 
  end 
  sum 
end

puts sum_of_cubes(1,3)