class OrangeTree 

	def initialize
		@height = 0
		@age = 0 
		@orangeCount = 0
		puts "your tree was just planted"  
	end 

	def height
		@height  
	end

	def countTheOranges 
		puts "Orange Count is: #{@orangeCount}" 
	end 

	def pickAnOrange
		if @orangeCount > 0 
			@orangeCount = @orangeCount-1
			puts "Damn that orange was tasty."
			puts "Orange Count is now: #{@orangeCount}"
		else 
			puts "No oranges left his year!"
		end 
	end   
 
	def status 
		puts "Tree Status"
		puts "Age: #{@age}" 
		puts "Height: #{@height}"
		puts "Orange Count: #{@orangeCount}"
	end 

	def oneYearPasses 
		@age = @age +1 
		@height = @height +1 
		@orangeCount = 0 

		if @age == 50
			puts "Time withers all things, your tree is dead."
			exit 
		elsif @age < 4  
			puts "A year passes. Your tree is still a baby"
			puts status
		elsif (@age >= 4 and @age <= 15)
			@orangeCount = @orangeCount+5
			puts "A year passes. Your tree is growing up"
			puts status
		else 
			@orangeCount = @orangeCount+15
			puts "A year passes. Your tree is mature."
			puts status
		end 
	end 
end 


tree = OrangeTree.new 
tree.pickAnOrange
tree.oneYearPasses
tree.oneYearPasses

