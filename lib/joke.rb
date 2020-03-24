class Joke < ActiveRecord::Base

    has_many :favorite_jokes 
    
    
    def self.all_jokes 
        count = 1
        self.all.each do |joke| 
        puts "#{count}. #{joke.text}"
        count += 1 
        end
    end 
    def self.all_themes
        self.all.map {|joke| joke.theme}.uniq 
        binding.pry
    end

    def self.find_by_theme
        
    end

        
end 
