# Wouldn't this work better with cases and iterators? 


puts "WHAT DID YOU SAY?"
gm = gets.chomp 
byecount = 0 

while byecount != 3
	if gm != gm.upcase 
		puts "HUH?!  SPEAK UP, SONNY!"
		gm = gets.chomp
	elsif gm == "BYE" 
		puts "..."
		gm = gets.chomp
		if gm == "BYE"
			puts "HM?"
			gm = gets.chomp
			if gm == "BYE"
				byecount = 3 
			else 
				puts "NO, NOT SINCE " + rand(1929..1951).to_s + "!"
				puts "NOW BE A GOOD LAD AND TALK MORE."
				gm = gets.chomp
			end 	
		else 
			puts "NO, NOT SINCE " + rand(1929..1951).to_s + "!"
			puts "NOW BE A GOOD LAD AND TALK MORE."
			gm = gets.chomp 
		end 
	else 
		puts "NO, NOT SINCE " + rand(1929..1951).to_s + "!"
		puts "NOW BE A GOOD LAD AND TALK MORE."
		gm = gets.chomp 	
	end  
end 

puts "BUT WE JUST STARTED TO TALK!"
 

