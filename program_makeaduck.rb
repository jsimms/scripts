print "Pleathe hand uth a thring"
user_input = gets.chomp
user_input.downcase!

if user_input.empty?
    print "Please put in thomething.."
    user_input = gets.chomp
    user_input.downcase!
elsif user_input.include? "s"
    user_input.gsub!(/s/, "th")
else
    puts "Nothing to do here"
end

puts "This is what you typed would look like if you were a duck, (a duck?!, the
      president of the united states is a duck!?) #{user_input}." 
