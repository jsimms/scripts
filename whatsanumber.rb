print "Choose a number" 
number = Integer(gets.chop) 

if number < 3
    puts "your number is less than three" 
elsif number > 3
    puts "your number is greater than three" 
else 
    puts "you either didn't choose a number or you chose 3"
end 
