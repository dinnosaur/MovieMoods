class Mood < ActiveRecord::Base 
    has_many :users
    has_many :movie_moods 
    has_many :movies, through: :movie_moods



    def self.all_moods
        num = 1
        self.all.each  {|user|puts "#{num}.#{user.name}"; num +=1; }
     
    end 

    def self.find_mood(status)
        self.find {|mood| mood.mood_name == status}
    end 

end 