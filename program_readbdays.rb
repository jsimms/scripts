Dir.chdir '/Users/jdsimms/Documents/test-stuff/birthdays'
birth_dates = Hash.new {}

File.open 'birthdays.txt', 'r' do |f|
  f.read.each_line do |line|
    name, date = line.split(/,/, 2)
    birth_dates[name] = date.chomp
    birth_dates.each_key {|a| birth_dates[a].strip! }
  end
end

puts "Who's bday you looking for?"
name = gets.chomp
bday = birth_dates[name]

if bday == nil
  puts "don't know that one"
else
  puts "#{name}'s bday is #{bday}"
end


#todo - remove leading white space in values
#todo - use Time objects to display wtheir age on their next birthday. 
