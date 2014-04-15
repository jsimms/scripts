words = []
input = ''

puts "Put in a bunch of words yo!"
puts "Tap enter with nothing in it to stop adding"
input = gets.chomp.downcase 

while input != ""
	words.push input 
	input = gets.chomp.downcase
end 
 

puts words.sort.to_s 
 