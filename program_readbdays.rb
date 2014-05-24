require 'CSV'
Dir.chdir '/Users/jdsimms/Documents/test-stuff/birthdays'
birth_dates = Hash.new {}

def parse_birthdays(file='birthdays.txt', hash={})
  CSV.foreach(file, :converters=> lambda {|f| f ? f.strip : nil}){|name, date, year|hash[name] = "#{year}-#{date.gsub(/ +/,'-')}" }
  hash
end
puts parse_birthdays

=begin
File.open 'birthdays.txt', 'r' do |f|
  f.read.each_line do |line|
    name, date = line.split(/,/, 2)
    birth_dates[name] = date.chomp.strip
  end
end

puts birth_dates
=end
=begin
puts "Who's bday you looking for?"
name = gets.chomp
bday = birth_dates[name]

if bday == nil
  puts "don't know that one"
else
  puts "#{name}'s bday is #{bday}"
end
=end

#todo - remove leading white space in values
#todo - use Time objects to display wtheir age on their next birthday.
