#Write a method that sorts a given array alphabetically. 
#Also include a parameter that determines if it should be done a-z or z-a, with a default to a-z

def alphabetize(arr, rev=false) 
    if rev 
        arr.sort!.reverse!
    else 
        arr.sort! { |x,y| x <=> y }
    end 
end 

my_array = [1, 3, 5, 3333, 445, 34535, 77, 6, 435, 8, 89, 3453453]

puts alphabetize(my_array, true) 
puts alphabetize(my_array) 	