class User < ActiveRecord::Base 
    belongs_to :mood
    # belongs_to :movie_mood, through:moods


   def self.add(name)
        #adds a user to the databse 
        self.find_or_create_by(name:name)
   end 

   def self.find_name(name)
        #finds a user based on the name given 
    self.all.find_by(name:name)
   end 
   

   def all_movies
    num = 1
    self.mood.movies.each {|movie| puts "#{num}. #{movie.title}"; num +=1;}
   end

    def self.all_users
        #displays all user stored in the daatabse 
        num = 1
        self.all.each  {|user|puts "#{num}. #{user.name}"; num +=1; }
     
    end 

   

   
    
end 