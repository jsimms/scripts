# A simple table of contents program. 
# Start the program with an array holding all of the information for your Table of Contents
# Then print out the information from the array in a beautifully formatted Table of Contents.

toc = ["Table of Contents", "Chapter 1", "Numbers", "page 1", "Chapter 2", "Letters", "page 72",
			"Chapter 3", "Variables", "page 1128"]

lineWidth=50
puts toc[0].center lineWidth
puts
puts toc[1] + ":  " + toc[2].ljust(lineWidth/2) + toc[3].rjust(lineWidth/2)
puts toc[4] + ":  " + toc[5].ljust(lineWidth/2) + toc[6].rjust(lineWidth/2)
puts toc[7] + ":  " + toc[8].ljust(lineWidth/2) + toc[9].rjust(lineWidth/2)

# ^ seems lame, there's gotta be a way to store an array of hashes and iterate through...
