class Calculator
  
  def initialize 
  	@name = "Jake's Calculator"
  	@color = "grey"
  	@type = "Ruby TI-83"
  	@year = 2001
  	puts "powering up..."
  end 

  def add(a, b)
   a+b
  end

  def subtract(a, b)
   a-b
  end

  def mad_lib
  	# A simple program that requests a few words and displays them in a sentence. 
  	# I'm sure this could be done a more effective way, but I've got to get to work. 
  	puts "Mad lib time!"
  	
  	puts "Please give me an adjetive"
  	adjetive = gets.chomp.downcase

  	puts "Please give me a noun"
  	noun = gets.chomp.downcase

  	puts "Please give me an adverb"
  	adverb = gets.chomp.downcase

  	puts "Please give me a verb"
  	verb = gets.chomp.downcase

  	puts 
  	puts "And your Mad Lib is..."
  	puts "Mrs. Featherbottom is walking her #{adjetive} #{noun}, when a bird #{adverb} #{verb} her hat!" 
  end 
end

calc = Calculator.new
calc.mad_lib