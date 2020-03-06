class User < ActiveRecord::Base 
    belongs_to :mood
    has_many :favourites
    has_many :movies, through: :favourites
   

   def self.add(name)
        #adds a user to the databse 
        self.find_or_create_by(name:name)
   end 

   def self.find_name(name)
        #finds a user based on the name given 
         self.all.find_by(name:name)
   end 
   

   def all_movies_mood
        #displays all the movies based on the user mood
        num = 1
        self.mood.movies.each {|movie| puts "-----> #{num}. #{movie.title} - [Genre:#{movie.genre}]   [Year:#{movie.year}]   Director:[#{movie.director}]"; num +=1;}
    end

    def movie_key
        self.mood.movies.map do |movie| movie.id    
        end
    end

 

    def self.all_users
        #displays all user stored in the daatabse 
        num = 1
        self.all.each  {|user|puts "-----> #{num}. #{user.name}"; num +=1; }
     
    end 


    def movies_from_favourites
      #displays all the movies from the users favourite list
      self.each {|movie| puts "-----> #{num}. #{movie.title} - [Genre:#{movie.genre}]   [Year:#{movie.year}]   Director:[#{movie.director}]"; num +=1;}
    end

   

   
    
end 