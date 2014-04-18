#Given an instance of an object, write an expression that checks if a candidate satisfies all the needs. 

#Here is an example of the candidate object: 
#candidate.years_of_experience = 4
#  candidate.github_points = 293
#  candidate.languages_worked_with = ['C', 'Ruby', 'Python', 'Clojure']
#  candidate.applied_recently? = false
#  candidate.age = 26

#We want to search for someone who: 
# Has Ruby Experience 
# Has two years of experience or 500+ github points 
# No one under the age of 15 
# No recent applicants  

is_an_experienced_programmer = (candidate.languages_worked_with.include? 'Ruby') && 
															 (candidate.years_of_experience >= 2 || candidate.github_points >= 500) &&
															 ! (candidate.age < 15 || candidate.applied_recently? == true) 