class MovieMood < ActiveRecord::Base 
    belongs_to :mood
    belongs_to :movie



    def self.return_movie_ids_by_mood(mood_num) 
        #will return an arrays of ids of movies 
        self.select {|movie| movie.mood_id == mood_num}.map {|movies| movies.movie_id}
        
    end 

end