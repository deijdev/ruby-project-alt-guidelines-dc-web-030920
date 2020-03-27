require 'pry'

class CommandLineInterface 

      def greet_user
      pastel = Pastel.new
      font = TTY::Font.new("3d")
      puts pastel.magenta.bold(font.write('ComicRelief'))
      puts pastel.white.inverse.bold("Knock knock. Who's there? (Enter Your Name)")
      user = gets.chomp.titleize
      return User.find_or_create_by(name: user)
      end



      def menu(user)
        pastel = Pastel.new
        puts "Welcome to Survival Jokes #{user.name}, the best resource for jokes to survive pandemics in the world!"
        puts pastel.white.inverse.bold("Please type a number to select from the menu below:")
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
        #exit the CLI
        puts "6. Byeee!"
        puts "*********************"
        puts "                            "    
        return gets.chomp.to_i
      end

      # if  input == "1"
      def return_all_jokes(user)
        puts "*********************"
          Joke.all_jokes
          puts "                                             "
          self.return_to_menu(user)
      end

      # elsif input == "2"
      def themes_menu(user)
        pastel = Pastel.new
         puts "                                             "
         puts pastel.white.inverse.bold("Here are a list of themes, please select one.") 
         puts "*********************"
         Joke.all_themes 
         puts "*********************"
         user_theme = gets.chomp
         if Joke.find_by_theme(user_theme) == []
          puts "*********************"
          puts pastel.white.inverse.bold("No such theme, please try again.")
          puts "*********************"
          self.return_to_menu(user)
         else Joke.puts_user_theme_jokes(user_theme)
         puts "                                             "
         self.return_to_menu(user)
         end
      end

      # elsif input == "3"

      def joke_randomizer(user)
        puts "                                             "
        puts "Hope this makes you laugh!                   "
        puts "                                             "
        puts "*********************"
        random_joke = Joke.all.sample.text
        puts random_joke
        puts "                                             "
        puts "*********************"
        puts"Want another random joke? (Press ENTER)"
        input = gets.chomp
        if input
          puts random_joke
        end
          puts "                                             "
          puts "*********************"
        self.return_to_menu(user)
      end
 

      # elsif input == "4"

      def return_favorite_jokes(user)
        puts "                                             "
        users_favorite_jokes(user)
        puts "                                             "
        self.return_to_menu(user)
      end

      # elsif input == "5"
       def keyword_find(user)
        pastel = Pastel.new
        puts "                                             "
        puts pastel.white.inverse.bold("Please enter a keyword to search by.")
        keyword = gets.chomp 
        Joke.find_by_keyword(keyword)
        self.return_to_menu(user) 
       end


######## Outside of menu methods#####





    def users_favorite_jokes(user)
      user.jokes.each do |joke|
        puts "- #{joke.text}"
      end
    end

    def return_to_menu(user)
      puts "RETURN TO MAIN MENU: type 'menu' "
      puts "                    "
      keyword = gets.chomp 


      if keyword.upcase == "MENU"
        puts " "
        selection_menu(user)
      else 
        puts "                                             "
        puts "*********************"
        puts "Please try again"
        puts "*********************"
        puts "                                             "
        selection_menu(user)
      end 
    end 

    def selection_menu(user)
      pastel = Pastel.new
       input = menu(user)
      if input == 1
        return_all_jokes(user)
      elsif input == 2
        themes_menu(user)
      elsif input == 3
        joke_randomizer(user)
      elsif input == 4
        return_favorite_jokes(user)
      elsif input == 5
        keyword_find(user)
      elsif input == 6
          exit(user)
      else
       puts "                                             "
       puts "                                             "
       puts pastel.white.inverse.bold("Please enter a number between 1 and 6")
        puts "                                             "
        puts "                                             "
        selection_menu(user)
      end
    end

    def run 
      user = greet_user
      selection_menu(user)
    end

    def exit(user)
      puts "                                             "
      puts "Smell ya' later!!!"
      #do nothing, end the app
    end


end




