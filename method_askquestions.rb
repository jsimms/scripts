def ask question
  while true
    puts question
    reply = gets.chomp.downcase
    if (reply == 'yes' || reply == 'no')
      if reply == 'yes'
        return true
      else
        return false
      end
      break
    else
      puts 'please answer "yes" or "no".'
    end
  end
end

puts 'Hello, thanks for...'
puts
ask "Do you like eating tacos?"        # Don't care about return
ask "Do you like eating burritos?"     # Don't care about return
wets_bed = ask "Do you wet the bed?"   # Save this return value
ask "Do you like eating quesedillas?"  # Don't care about return
ask "Do you like eating chimichangas?" # Don't care about return
puts
puts "Just a couple more questions"
puts
ask "Do you like drinking horchatas?"   # Don't care about return
ask "Do you like eating sopapillas?"     # Don't care about return
puts
puts "DEBRIEF"
puts "Thank you for participating."
puts
puts wets_bed
