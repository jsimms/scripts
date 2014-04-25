movies = { 
    Caddyshack: 4, 
    Dark_knight: 5, 
    Blair_witch_2: 0
}

puts "Hi user, please give me your input:" 
puts "--add"
puts "--update"
puts "--display"
puts "--delete" 

choice = gets.chomp 

case choice 
when "add"
    puts "What's the name of the movie?" 
    title = gets.chomp 
    puts "Please rate the movie from 0-5"
    rating = gets.chomp
    
    if movies[title.to_sym] == nil
        movies[title.to_sym] = rating.to_i
        puts "#{title} was added to your movie list" 
    else
        puts "That movie is already on your list"
    end 
    
when "update" 
    puts "What movie would you like to update?" 
    title = gets.chomp 
    
    if movies[title.to_sym] == nil
        puts "That movie isn't on the list, go on and add it" 
    else 
        puts "Please update your rating (use 0-5)" 
        rating = gets.chomp 
        movies[title.to_sym] = rating.to_i
    end
        
when "display"
    movies.each { |k,v| puts "#{k}: #{v}" } 
    
when "delete" 
    puts "What's the name of the movie you want to delete?" 
    title = gets.chomp 
    
    if movies[title.to_sym] == nil
        puts "#{title} isn't on your movie list, so I can't delete it!" 
    else
        movies.delete(title.to_sym)
        puts "I've removed #{title} from your list."
    end 
else 
    puts "Error!" 
end 