#Create an example Dragon as a pet class. 

class Dragon
  
  def initialize name
    @name = name
    @asleep = false
    @stuffInBelly     = 10  #  He's full.
    @stuffInIntestine =  0  #  He doesn't need to go.
    
    puts @name + ' is born.'
  end
  
  def feed
    puts 'You feed ' + @name + '.'
    @stuffInBelly = 10
    passageOfTime
  end
  
  def walk
    puts 'You walk ' + @name + '.'
    @stuffInIntestine = 0
    passageOfTime
  end
  
  def putToBed
    puts 'You put ' + @name + ' to bed.'
    @asleep = true
    3.times do
      if @asleep
        passageOfTime
      end
      if @asleep
        puts @name + ' snores, filling the room with smoke.'
      end
    end
    if @asleep
      @asleep = false
      puts @name + ' wakes up slowly.'
    end
  end
  
  def toss
    puts 'You toss ' + @name + ' up into the air.'
    puts 'He giggles, which singes your eyebrows.'
    passageOfTime
  end
  
  def rock
    puts 'You rock ' + @name + ' gently.'
    @asleep = true
    puts 'He briefly dozes off...'
    passageOfTime
    if @asleep
      @asleep = false
      puts '...but wakes when you stop.'
    end
  end
  
  private
  
  #  "private" means that the methods defined here are
  #  methods internal to the object.  (You can feed
  #  your dragon, but you can't ask him if he's hungry.)
  
  def hungry?
    #  Method names can end with "?".
    #  Usually, we only do this if the method
    #  returns true or false, like this:
    @stuffInBelly <= 2
  end
  
  def poopy?
    @stuffInIntestine >= 8
  end
  
  def passageOfTime
    if @stuffInBelly > 0
      #  Move food from belly to intestine.
      @stuffInBelly     = @stuffInBelly     - 1
      @stuffInIntestine = @stuffInIntestine + 1
    else  #  Our dragon is starving!
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + ' is starving!  In desperation, he ate YOU!'
      exit  #  This quits the program.
    end
    
    if @stuffInIntestine >= 10
      @stuffInIntestine = 0
      puts 'Whoops!  ' + @name + ' had an accident...'
    end
    
    if hungry?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + '\'s stomach grumbles...'
    end
    
    if poopy?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + ' does the potty dance...'
    end
  end
end

# And now for our interface... 

def displayActions   
  toc = ["Choose Your Action", "1. Feed", "2. Walk", "3. Put to Bed",
                             "4. Toss", "5. Rock", "6. Exit Program"]
  puts  
  puts toc[0]
  puts toc[1]
  puts toc[2]
  puts toc[3]
  puts toc[4]
  puts toc[5]
  puts toc[6]
  puts 
end 

# If you start me up!  
gameOn = true

puts "You found a dragon egg!"
puts "What will you name it?"
puts 
dn = gets.chomp.to_s
puts "#{dn}? Great name."
puts 
pet = Dragon.new "#{dn}"
puts 

#Prompting for actions until they die or exit.    
while gameOn = true 
  
  # Get the first set of instructions 
  displayActions 
  action = gets.chomp 

  case action 

    when '1'
      pet.feed
      displayActions
      action = gets.chomp 
    when '2' 
      pet.walk 
      displayActions
      action = gets.chomp 
    when '3' 
      pet.putToBed
      displayActions 
      action = gets.chomp 
    when '4' 
      pet.toss 
      displayActions 
      action = gets.chomp
    when '5' 
      pet.rock
      displayActions
      action = gets.chomp
    when '6' 
      puts "Are you sure you want to exit? Y/N"
      answer = gets.chomp.downcase 
      if answer == "y"
        puts "You have abandoned your dragon. He renames himself to Smaug."
        gameOn = false
        exit   
      elsif answer == "n"
        displayActions
        action = gets.chomp
      else 
        puts "Sorry, I didn't understand. Please choose 'Y' or 'N'"
      end 
    else 
      puts "Sorry, I didn't understand. Choose a number 1-6."
  end  
end 











