# Write a method, pow, that takes two (non-negative, integer) numbers, 
# base and exponent and returns base raised to the exponent power. 


# This is the ruby way 
def pow (base, exponent)
	return base ** exponent 
end 

# This is the harder way 
def pownoruby (base, exponent)
	result = 1
	i = 1
	while i <= exponent	 
		result = result * base 
		i += 1 
	end 
	return result 

end  


puts pow(2,3) 
puts pownoruby(2,3)
