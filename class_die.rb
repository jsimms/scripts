#Create an example Dice class

class Die

  def initialize
		roll
	end

	def roll
    @numberShowing = 1 + rand(6)
  end

	def showing
		@numberShowing
	end

	def cheat n
		if (n <= 6 and n >= 1)
			@numberShowing = n
		else
			return "Yeah, no. Choose 1-6."
		end
	end

end

dice = [Die.new, Die.new]
dice.each do |die|
  puts die.roll
end
