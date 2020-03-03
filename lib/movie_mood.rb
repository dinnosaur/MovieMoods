class MovieMood < ActiveRecord::Base 
    belongs_to :mood
    belongs_to :movie
end