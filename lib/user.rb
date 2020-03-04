class User < ActiveRecord::Base 
    belongs_to :mood
    # belongs_to :movie_mood, through:moods


   def self.add(name)
        self.find_or_create_by(name:name)
   end 

   def self.find_name(name)
        self.all.find_by(name:name)
   end 
   
   def update(mood)
    self.find_name.update(mood:mood)
    end 

    
end 