#given a string, find the frequency of a word in that string

def find_frequency(string, word)
  word_array = string.downcase.split 
  word_array.count(word)
end

puts find_frequency("How much wood could a woodchuck chuck if a woodchuck could chuck wood", "could")