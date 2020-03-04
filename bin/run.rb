require_relative '../config/environment'


def greet
puts "Welcome to Movie Moods\n"

end 

def create_user 
    puts "What is your Name\n"
    get_name = gets.chomp.to_s
    User.add(get_name)
end 


def existing_user 
   
    menu_exit = 0
    while menu_exit == 0 do 
    puts "\nAre you a existing user (Y/N) ?"
    yesorno = gets.chomp.to_s
    
        if yesorno == "Y"|| yesorno == "y"
            #add please select your user
            puts "nice"
            menu_exit = 1
    
        elsif yesorno == "N"|| yesorno == "n"
            #create n account 
            create_user
            puts "User Created!"
            menu_exit = 1 
        else 
            puts "Please Enter Y or N"
        
        end
        end 
    end 


def create_user 
    puts "What is your Name\n"
    get_name = gets.chomp.to_s
    User.add(get_name)
end 


# def set_mood 

# end 

# def select_user 
    
# end 

    greet 
    existing_user




    # name = gets.chomp.to_s



