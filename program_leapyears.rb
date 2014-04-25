puts "Please give a Starting Year XXXX"
sy = gets.chomp.to_i 

puts "Please give an Ending Year XXXX"
ey = gets.chomp.to_i

puts "Thanks, here are your leap years:" 
while sy <= ey 
	if (sy%4 == 0 && sy%100 !=0) 
		puts sy   
	elsif (sy%4 == 0 && sy%400 == 0)
		puts sy 
	end
	sy = sy+1
end