# Not complete, need to figure out how to move things around within an array...

words = []
input = ''

puts "Put in a bunch of words yo!"
puts "Tap enter with nothing in it to stop adding"
input = gets.chomp.downcase 

while input != ""
	words.push input 
	input = gets.chomp.downcase
end 

#put words in alphabetical order without using sort method 
words.each do |word|
	#loop through each word if word is < than the next word, push it up the array

end 

puts words 




#puts words.sort 