require 'yaml'

test_array = [ 'give quiche a chance',
               'mutants out',
               'chamelonic life forms, no thanks' ]

test_string = test_array.to_yaml

filename = 'tshirts.txt'

File.open filename, 'w' do |f|
  f.write test_string
end

read_string = File.read filename
read_array = YAML::load read_string

puts(read_string == test_string)
puts(read_array == test_array)
