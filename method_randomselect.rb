#Choose n number of random elements in a given array. 
#Basically, my own version of Array.sample 

def random_select(array, n)
	random_picks = []
	n.times do |i|
		random_picks << array[rand(array.length)]    
	end 
	random_picks 
end 

ary = ["lots", "of", "random", true, 4, 12, 822, "yupyup!"]
puts random_select(ary, 3) 