require 'pry'

class CommandLineInterface 

      def greet_user
        puts "Knock knock. Who's there? (Enter Your Name)"
        user = gets.chomp
        puts "Welcome to Survival Jokes #{user}, the best resource for jokes to survive pandemics in the world!"
      end


      def menu 

        puts "Please type a number to select from the menu below:"
        puts "*********************"
        #I can see all jokes in the application (Read)puts 
        puts "1. See all jokes"
        puts "*********************"    
        #Search jokes by theme (knock knock, blonde, etc.)
        puts "2. Find jokes by theme"
        puts "*********************"
        #Search jokes by name (Read)
        puts "3. Find jokes by name"
        puts "*********************"
        #View my favorite jokes (Read)
        puts "4. View your favorite jokes"
        puts "*********************"
        #Search jokes by keyword (Read) 
        puts "5. Search jokes by keyword"
        puts "*********************"
        #Submit a new joke (Create)
        puts "6. Think you're funny? Submit a joke!"
      #Favorite and unfavorite jokes(Create & Delete)    
      input = gets.chomp

      if  input == "1"
          Joke.all_jokes
      elsif input == "2"
         puts "                                             "
         puts "Here are a list of themes, please select one." 
         Joke.all_themes
         user_theme = gets.chomp
         Joke.puts_user_theme_jokes(user_theme)
         puts "                                             "
      elsif         
        puts "Please enter a number between 1 and 6"
      end 

    end  
end

