#Using your is_prime? method, write a new method, primes that takes a (non-negative, integer) 
#number max and returns an array of all prime numbers less than max

def is_prime?(num)
	i = 1  
	while i <= num 
		if num == 2 
			return true  
		elsif i == 1 || i == num 
			i += 1 
		elsif num%i == 0
			return false
			exit    	  
		else 
			return true
			i += 1   
		end
	end 
end    

def primes(max)
	i = 1
	nums = [] 
	while i <= max 
		if is_prime?(i) == true 
			nums << i 
			i += 1  
		else 
			i += 1 
		end 
	end
	return nums  
end

print primes(25)
puts 