class TicTacToe 

	def initialize 
		@board = [" ", " ", " ",
							" ", " ", " ",
							" ", " ", " " ] 

		@xplayer = " "
		@xmark = "X"
		@xturn = false 

		@oplayer = " "
		@omark = "O"
		@oturn = false 

		@draw = false
		@win = false   
	end 

# Game Methods 
	def setupGame # Runs the user through all the preliminary setup steps
		puts "Yeah! TicTacToe! Woo!"
		displayCellNames 
		namePlayers
		displayPlayers
		goesFirst
	end 

	def playGame # Keeps prompting users until there is a draw or winning move
		while (@win == false and @draw == false) 
			makeMove
			winner?
			if @win == false 
				tieGame?
			end 
			currentBoard
			if (@win == false and @draw == false) 
				changePlayer
			end 
		end 
	end 

# Player methods 
	def namePlayers 
		puts "Who is playing #{@xmark}'s?"
		@xplayer = gets.chomp.to_s 
		puts "Who is playing #{@omark}'s?"
		@oplayer = gets.chomp.to_s
	end 

	def displayPlayers 
		puts
		puts "Cool. So..."
		puts "#{@xplayer} is #{@xmark}'s" 
		puts "#{@oplayer} is #{@omark}'s"
		puts
	end 

	def goesFirst # Flip a coin to go first...
		if (@xturn == false and @oturn == false)
			random = rand(0..1)
			if random == 0
				@xturn = true 
				@oturn = false
				puts "#{@xplayer} has been randomly selected to go first."
			else 
				@oturn = true 
				@xturn = false 
				puts "#{@oplayer} has been randomly selected to go first."				
			end
		end
	end 

	def changePlayer # This alternates the player making the move. 
		if (@xturn == true and @oturn == false)
			@xturn = false 
			@oturn = true 
			puts "#{@oplayer}, it is now your turn."
		elsif (@xturn == false and @oturn == true)
			@xturn = true 
			@oturn = false 
			puts "#{@xplayer}, it is now your turn."
		else 
			goesFirst
		end 
	end 

# Board methods  
	def displayCellNames # Only shown at the beginning for reference. 
		puts 
		puts "For reference, here's how the cells are named:"
		puts
		puts "0" + " | " + "1" + " | " + "2"
		puts "----------"
		puts "3" + " | " + "4" + " | " + "5"
		puts "----------"
		puts "6" + " | " + "7" + " | " + "8"
		puts
	end 	

	def currentBoard # Shows the current state of the game board  
		puts 
		puts "Current Board:"
		puts
		puts @board[0] + " | " + @board[1] + " | " + @board[2]
		puts "----------"
		puts @board[3] + " | " + @board[4] + " | " + @board[5]
		puts "----------"
		puts @board[6] + " | " + @board[7] + " | " + @board[8]
		puts
	end 

	def makeMove  
		print "Please choose a cell to mark [0-8]"
		currentBoard 
		move = gets.chomp.to_i

		if @board[move] == " "
			if (@xturn == true and @oturn == true) # Shouldn't ever happen...but... 
				puts "hmm...it says it is both x and o player's turn."
			elsif @oturn == true 
				@board[move] = "O"
			elsif  @xturn == true 
			 @board[move] = "X"
			else 
				goesFirst
			end 
		else 
			puts "That cell is already taken."
			makeMove
		end 
	end 

	def winner? # Checks every possible win combination 
		# Check top row  
		if (@board[0] == "X" and @board[1] == "X" and @board[2] == "X")
			puts "#{@xplayer} wins!"
			@win = true 
		elsif (@board[0] == "O" and @board[1] == "O" and @board[2] == "O")
			puts "#{@oplayer} wins!"
			@win = true
		# Check middle row 
		elsif (@board[3] == "X" and @board[4] == "X" and @board[5] == "X")
			puts "#{@xplayer} wins!" 
			@win = true
		elsif (@board[3] == "O" and @board[4] == "O" and @board[5] == "O")
			puts "#{@oplayer} wins!"
			@win = true
		# Check bottom row
		elsif (@board[6] == "X" and @board[7] == "X" and @board[8] == "X")
			puts "#{@xplayer} wins!" 
			@win = true
		elsif (@board[6] == "O" and @board[7] == "O" and @board[8] == "O")
			puts "#{@oplayer} wins!"	
			@win = true
		# Check first column
		elsif (@board[0] == "X" and @board[3] == "X" and @board[6] == "X")
			puts "#{@xplayer} wins!" 
			@win = true
		elsif (@board[0] == "O" and @board[3] == "O" and @board[6] == "O")
			puts "#{@oplayer} wins!"	
			@win = true	
		# Check second column
		elsif (@board[1] == "X" and @board[4] == "X" and @board[7] == "X")
			puts "#{@xplayer} wins!" 
			@win = true
		elsif (@board[1] == "O" and @board[4] == "O" and @board[7] == "O")
			puts "#{@oplayer} wins!"	
			@win = true 
		# Check third column
		elsif (@board[2] == "X" and @board[5] == "X" and @board[8] == "X")
			puts "#{@xplayer} wins!" 
			@win = true
		elsif (@board[2] == "O" and @board[5] == "O" and @board[8] == "O")
			puts "#{@oplayer} wins!"
			@win = true	 
		# Check left to right diag
		elsif (@board[0] == "X" and @board[4] == "X" and @board[8] == "X")
			puts "#{@xplayer} wins!" 
			@win = true
		elsif (@board[0] == "O" and @board[4] == "O" and @board[8] == "O")
			puts "#{@oplayer} wins!"
			@win = true
		# Check right to left diag
		elsif (@board[2] == "X" and @board[4] == "X" and @board[6] == "X")
			puts "#{@xplayer} wins!"
			@win = true 
		elsif (@board[2] == "O" and @board[4] == "O" and @board[6] == "O")
			puts "#{@oplayer} wins!"
			@win = true
		else 
			@win = false 
		end 
	end 

	def tieGame? 
		# Determines if the board is full and declares a tie 
		# (should be run after winner? method)  
		
		# first, loop through the array & store value counts in a hash  
		counts = Hash.new(0)
		@board.each do |cell|
			counts[cell] += 1
		end 

		# if the board is full, declare a draw!  
		if (counts["X"] == 4 and counts["O"] == 5)
			puts "***It's a draw!***"
			@draw = true 
		elsif (counts["X"] == 5 and counts["O"] == 4)
			puts "***It's a draw!***"
			@draw = true 
		else 
			@draw = false 
		end  
	end 

end 

test = TicTacToe.new 
test.setupGame
test.playGame




