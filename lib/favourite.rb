class Favourite < ActiveRecord::Base
    belongs_to :movie
    belongs_to :user




def self.add(user1, movie1)
    self.find_or_create_by(user:user1,movie:movie1)
end





end  