class Joke < ActiveRecord::Base

    has_many :favorite_jokes 
    
    def self.all_jokes 
        count = 1
        self.all.each do |joke| 
        puts "#{count}. #{joke.text}"
        count += 1 
        end
    end

    #helper method to collect all themes from jokes, then only keep unique themes
    def self.all_uniq_themes
        self.all.collect do |joke|
            joke.theme 
        end.uniq
    end

    #use the helper method above to iterate through unique themes and puts it out pretty
    def self.all_themes
        count = 1
        self.all_uniq_themes.each do |joke|
            puts "- #{joke}"
            count += 1
        end
    end

    #finds all jokes that match the user_theme
    def self.find_by_theme(user_theme)
        self.all.select do |joke|
            joke.theme.upcase == user_theme.upcase
        end
    end

    def self.puts_user_theme_jokes(user_theme)
        puts "                    "
        puts "Here are some #{user_theme} jokes for you - "
        puts "                    "
        count = 1
        jokes = self.find_by_theme(user_theme)
        jokes.each do |joke|
            puts "Joke #{count}. #{joke.text}"
            count += 1
            puts "                    "
        end
    end


    #should find a joke by entering a key word
    #searches the text of the joke for that word 
    def self.find_by_keyword(keyword)

        jokes = self.all.select do |joke| 
            joke.text.include?(keyword)
        end 

        if jokes == []
            puts "                    "
            puts "SORRY! Jokes on you. No results found."
        else 

            puts "                    "
            puts "Search results for #{keyword}:"
            puts "*********************"
            puts "                    "
            jokes.each do |joke|
                puts "Name: #{joke.name}"
                puts "Joke: #{joke.text}"
                puts "                    "
            end
        end 
        puts "                    "
        puts "*********************"

    end 


    # def self.print_results_by_keyword(keyword)
    #     puts "                    "
    #     puts "Search results for #{keyword}:"
    #     puts "                    "
    #     jokes.each do |joke|
    #         puts "Name: #{joke.name}"
    #         puts "Joke: #{joke.text}"
    #         puts "                    "
    #     end
    # end 

        
end 
