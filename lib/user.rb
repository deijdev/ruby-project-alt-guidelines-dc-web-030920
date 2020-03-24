class User < ActiveRecord::Base

    has_many :favorite_jokes
    has_many :jokes, through: :favorite_jokes


end 