# Given an array, return true if all the elements are Fixnums.
def array_of_fixnums?(array)
	fixnum = 0 
	
	array.each do |i|
		if i.is_a?(Fixnum)
			fixnum += 1 
			puts fixnum
		end 
	end 

	if fixnum == array.count
		true
	else
		false 
	end  	
end 

puts array_of_fixnums?([1,2,3,4])
puts array_of_fixnums?(["derp",2,"three"])
