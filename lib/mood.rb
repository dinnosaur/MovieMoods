class Mood < ActiveRecord::Base 
    has_many :users
    has_many :movie_moods 
    has_many :movies, through: :movie_moods

end 