puts "Please enter your text for histogramming:" 
text = gets.chomp 
text.downcase!
words = text.split(" ") 

frequencies = Hash.new(0)
words.each do |x| 
    frequencies[x] += 1
end 

frequencies = frequencies.sort_by { |key, value| value }
frequencies.reverse! 
frequencies.each do |key, value|
    puts key + " " + value.to_s
end 