# Just a basic greeter. He really likes counting names. 

puts "Hi and welcome. Can I please have your first name?"
first = gets.chomp.capitalize! 
puts "Thanks, and now your middle name?"
middle = gets.chomp.capitalize! 
puts "Great, now finally, your last name."
last = gets.chomp.capitalize! 
letters = last.length+first.length+middle.length
puts "Fantastic. Welcome to the program #{first} #{middle} #{last}, in case you were curious, your name has #{letters} letters in it."

# Then the greeter gets a little saucy. 
puts "Now I must ask you for your favorite number."
number = gets.chomp.to_i
puts "Thanks #{first}. #{number} is a great number, no doubt. But, do you not agree that #{number*number} is greater?"