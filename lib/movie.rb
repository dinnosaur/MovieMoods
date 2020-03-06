class Movie < ActiveRecord::Base
        has_many :movie_moods
        has_many :moods, through: :movie_moods
        has_many :users, through: :favourites








end 