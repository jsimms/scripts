#Create a method named 'sort_string' 
#which accepts a String and rearranges all the words in ascending order, by length. 
#Let's not treat the punctuation marks any different than other characters
#Assume that we will always have single space to separate the words.

def sort_string(string)
	words = string.split
	#loop through array, get length and sort by length.  
	words.sort { |x,y| x.length <=> y.length }
end 

puts sort_string("this string should have a couple different word lengths j asdfasdfasd sd dsdsdsdd")