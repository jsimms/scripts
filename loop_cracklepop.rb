#Write a program that prints out the numbers 1 to 100 (inclusive). 
#If the number is divisible by 3, print Crackle instead of the number. 
#If it's divisible by 5, print Pop. 
#If it's divisible by both 3 and 5, print CracklePop. 

i = 1 

while i <= 100 
	if (i%3 == 0 and i%5== 0) #divisible by 3 and 5 
		puts "CracklePop"
	elsif (i%3 == 0) #divisible by 3
		puts "Crackle"
	elsif (i%5 == 0) #divisible by 5 
		puts "Pop"
	else 
	puts i
	end  
	i += 1 
end 

