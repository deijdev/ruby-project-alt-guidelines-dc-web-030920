require 'pry'


class CommandLineInterface 

      def run 
        user = greet_user
        menu(user)
      end

      def greet_user
        puts "Knock knock. Who's there? (Enter Your Name)"
        user = gets.chomp.titleize
        return User.find_by(name: user)
      end



      def menu(user)
        puts "                            "
        puts "Welcome to Survival Jokes #{user.name}, the best resource for jokes to survive pandemics in the world!"
        puts "Please type a number to select from the menu below:"
        puts "*********************"
        #I can see all jokes in the application (Read)puts 
        puts "1. See all jokes" 
        #Search jokes by theme (knock knock, blonde, etc.)
        puts "2. Find jokes by theme"
        #Receive a random joke (Read)
        puts "3. See a random joke"
        #View my favorite jokes (Read)
        puts "4. View your favorite jokes"
        #Search jokes by keyword (Read) 
        puts "5. Search jokes by keyword"
        #Submit a new joke (Create)
        puts "6. Think you're funny? Submit a joke!"
        #exit
        puts "7. Byeee!"
        puts "*********************"
        puts "                            "    
      input = gets.chomp

      if  input == "1"
          Joke.all_jokes
          puts "                                             "
          self.return_to_menu(user)
      elsif input == "2"
         puts "                                             "
         puts "Here are a list of themes, please select one." 
         puts "*********************"
         Joke.all_themes 
         puts "*********************"
         user_theme = gets.chomp
         if Joke.find_by_theme(user_theme) == []
          puts "*********************"
          puts "No such theme, please try again."
          puts "*********************"
          self.return_to_menu(user)
         else Joke.puts_user_theme_jokes(user_theme)
         puts "                                             "
         self.return_to_menu(user)
         end
      elsif input == "3"
        puts "                                             "
        puts "Hope this makes you laugh!                   "
        puts "                                             "
        puts "*********************"
        random_joke = Joke.all.sample.text
        puts random_joke
        puts "                                             "
        puts "*********************"
        self.return_to_menu(user)
      elsif input == "4"
        puts "                                             "
        users_favorite_jokes(user)
        puts "                                             "
        self.return_to_menu(user)
      elsif input == "5"
        puts "                                             "
        puts "Please enter a keyword to search by."
        keyword = gets.chomp 
        Joke.find_by_keyword(keyword)
        self.return_to_menu(user) 
      elsif input == "6"
        puts "                                             "
        submit_joke
        puts "                                             "
      elsif input == "7"        
        exit
      else 
        puts "Please enter a number between 1 and 6"
        self.return_to_menu(user)
      end
    end  

    def users_favorite_jokes(user)
      user.jokes.each do |joke|
        puts "- #{joke.text}"
      end
    end

    def return_to_menu(user)
      puts "RETURN TO MAIN MENU: type 'menu' "
      keyword = gets.chomp 

      if keyword.upcase == "MENU"
        puts " "
        self.menu(user)
      else 
        puts "Please try again"
        self.menu(user)
      end 
    end 

    def exit
      #do nothing, end the app
    end

end

