# Ask a person what year, month, and day they were born.
puts "Please tell me what year you were born."
year = gets.chomp.to_i
puts "Please tell me what month you were born"
month = gets.chomp.to_i
puts "Please tell me what day you were born"
day = gets.chomp.to_i

#Figure out how old they are right now 
birthDay = Time.new(year, month, day)
currentDay = Time.now 
currentAge = (currentDay - birthDay)/31557600 
puts currentAge   

#Give a birthday spank for every bday they've had 
puts "Spank!"*currentAge