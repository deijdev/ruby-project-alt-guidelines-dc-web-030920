require 'pry'

class CommandLineInterface 

      def greet_user
        puts "Knock knock. Who's there? (Enter Your Name)"
        user = gets.chomp
        puts "Welcome to Survival Jokes #{user}, the best resource for jokes to survive pandemics in the world!"
      end


      def menu 
        puts "                            "
        puts "Please type a number to select from the menu below:"
        puts "*********************"
        #I can see all jokes in the application (Read)puts 
        puts "1. See all jokes" 
        #Search jokes by theme (knock knock, blonde, etc.)
        puts "2. Find jokes by theme"
        #Search jokes by name (Read)
        puts "3. Find jokes by name"
        #View my favorite jokes (Read)
        puts "4. View your favorite jokes"
        #Search jokes by keyword (Read) 
        puts "5. Search jokes by keyword"
        #Submit a new joke (Create)
        puts "6. Think you're funny? Submit a joke!"
        puts "*********************"
        puts "                            "
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
      elsif input == "5"
        puts "                                             "
        puts "Please enter a keyword to search by."
        keyword = gets.chomp 
        Joke.find_by_keyword(keyword)
        self.return_to_menu 
      elsif         
        puts "Please enter a number between 1 and 6"
      end 

    end  



    def return_to_menu
      puts "RETURN TO MAIN MENU: type 'menu' "
      keyword = gets.chomp 

      if keyword.upcase == "MENU"
        puts " "
        self.menu 
      else 
        puts "Please try again"
      end 
    end 





end

