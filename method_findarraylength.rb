def length_finder(input_array)
  string_length = []
  input_array.each do |i|
    string_length << i.length
  end 
  return string_length 
end

puts length_finder(["super", "cali", "something", "and", "bodacious"]).to_s 
