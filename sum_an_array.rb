#Write a method, sum which takes an array of numbers and returns the sum of the numbers.


addme = [1,2,3,4,5]

def sum(numbers)
	i = 0 
	result = 0
	while i < numbers.length
		result += numbers[i]
		i += 1
	end 
	result
end 

puts sum(addme)