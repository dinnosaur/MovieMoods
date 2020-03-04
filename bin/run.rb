require_relative '../config/environment'

# current_user 

def greet
puts "Welcome to Movie Moods\n"
puts "\nAre you a existing user (Y/N) ?"
end 

def create_user 
    puts "What is your Name\n"
    get_name = gets.chomp.to_s
    User.add(get_name)
end 


def existing_user 
   
    menu_exit = 0
    while menu_exit == 0 do 
    
    yesorno = gets.chomp.to_s
    
        if yesorno == "Y"|| yesorno == "y"
            #add please select your user
           all_users
            menu_exit = 1
    
        elsif yesorno == "N"|| yesorno == "n"
            #create an account 
            create_user
            puts "User Created!"
            menu_exit = 1 
        else 
            puts "Please Enter Y or N"
        
        end
        end 
    end 




def all_users 
    puts "Please Select Your User"
    User.all_users
end 


 def set_mood 
    puts "What is your current mood"
    User.all_moods
    gets.chomp 
    


 end 




# def select_user 
    
# end 

    greet 
    existing_user
    set_mood



    # name = gets.chomp.to_s



