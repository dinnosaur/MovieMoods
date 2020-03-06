class Mood < ActiveRecord::Base 
    has_many :users
    has_many :movie_moods 
    has_many :movies, through: :movie_moods



    def self.all_moods
        #displays all the moods
        num = 1
        self.all.each  {|user|puts "-----> #{num}.#{user.mood_name}"; num +=1; }
     end 

   

    

    

end 