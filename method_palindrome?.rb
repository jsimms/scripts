#Practice for writing a method that only returns true or false. 
#In ruby, you'll see these using ? as a naming convention. 

def palindrome?(string)
	string.gsub(/\s+/, "").downcase == string.gsub(/\s+/, "").downcase.reverse  
end 

puts palindrome?("Never odd or even")
