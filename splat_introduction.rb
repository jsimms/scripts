# Create a method called introduction that accepts a person's age,
# gender and any number of names, then returns a String that introduces
# that person by combining all of these values

def introduction(age, gender, *names)
  "Meet #{names.join(" ")}, who's #{age} and #{gender}"
end

puts introduction(28, "Male", "Jake", "David", "Simms")
