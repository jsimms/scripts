# Write a method, is_prime?, that takes a number num and returns true if it is
# prime and false otherwise.

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


puts is_prime?(24)
