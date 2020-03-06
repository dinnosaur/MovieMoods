class App 
    
    attr_accessor :current_user, :current_mood
    
    def greet
        puts "\n              WELCOME TO MOVIE MOODS\n"
        puts "\n         Are you an existing user (Y/N) ?"
    end 

    def options 
        puts "\n              MAIN MENU - (Please enter a number from [1] to [5])\n "
        puts "\n-----> 1. Show Movie suggestions based on your current Mood"
        puts "\n-----> 2. Change you current Mood"
        puts "\n-----> 3. Delete your profile and exit"
        puts "\n-----> 4. See a list of your current Favourites"
        puts "\n-----> 5. Exit"
    end 
        
    
        
    def existing_user 
           
        menu_exit = 0
        while menu_exit == 0 do 
            
            yesorno = gets.chomp.to_s
            
            if yesorno == "Y"|| yesorno == "y"
                #add please select your user
                select_user
                set_mood
                
                
                @current_user.update_attribute(:mood, @current_mood)
                menu_exit = 1
            
            elsif yesorno == "N"|| yesorno == "n"
                #create an account 
                @current_user = create_user
                puts "\nUser Created!"
                set_mood
                 
                @current_user.update_attribute(:mood,@current_mood )
                 
                menu_exit = 1 
            else 
                puts "Please enter the [Y] or [N] key"
            
            end
        end 
               
    end 

    def main_menu
        exit_val = 0 
        while exit_val == 0 do  
            options
            num= gets.chomp.to_i
            option = val_main_menu(num)
            if option == 1
                random_movies
            elsif option == 2
                set_mood
                @current_user.update_attribute(:mood, @current_mood)
            elsif option == 3
                delete_user
                exit_val = 1
            elsif option ==4
                puts "       \n                   Here is a list of Movies in your Favourites"
                if @current_user.movies.empty?
                    puts " You have no Movies in your favourites"
                else   
                    @current_user.movies_from_favourites
                end 
            elsif option == 5
                exit_val = 1
            else
                puts "please select a valid number"
            end
        end 
    end 
        

    def create_user 
        puts "What is your Name\n"
        get_name = gets.chomp.to_s
        User.add(get_name)
    end 
        
    def select_user
        puts "\n     Enter a number that is indicated by the arrow to select your profile\n"
        User.all_users
        get_user_id = gets.chomp.to_i
        new_user = val_user_input(get_user_id)
       @current_user =  User.find(new_user)
       puts "\n                 You have selected #{@current_user.name}!"
    end 
        
        
    def set_mood 
        puts "\n       How are you feeling right now ? (Please enter a number from [1] - [9]\n"
        Mood.all_moods
        get_mood = gets.chomp.to_i 
         new_mood =  val_mood_input(get_mood)
        @current_mood = Mood.find(new_mood)
        
        
        puts "\n    Your current mood is set to #{Mood.find(new_mood).mood_name}"
            
    end 


    def val_mood_input(get_mood)
        while get_mood <= 0 || get_mood > Mood.all.count do 
            puts "  Please enter a valid number"
            get_mood = gets.chomp.to_i 

        end 
           get_mood 

    end 


    def val_user_input(get_user)
        while get_user <= 0 || get_user > User.all.count do 
            puts "   Please enter a valid number"
            get_user = gets.chomp.to_i 
        end 
        get_user 

     end 

     def val_main_menu(num)
        while num <= 0 || num > 5 do 
            puts "   Please enter a valid number"
                num= gets.chomp.to_i 
        end 
       num

     end 



    def random_movies 
        puts "\n      Here's a list of movies based on your mood\n"
       @current_user.all_movies_mood
       add_movies
    end 


    def delete_user 
        User.delete(@current_user.id)
        puts "\n  USER HAS BEEN DELETED"
    end 

    def add_movies
        puts "\n  Enter a number to add a Movie to your favourites or enter the [e] key to return to the main menu\n"
        exit_out = 0 
        array = @current_user.movie_key
            
        while exit_out == 0 do
            num = gets.chomp.to_i
            if num == 0
                break
            end
                while num <= 0 || num > array.length do 
                puts "     Please enter a valid number"
                num= gets.chomp.to_i 
                end 
            val = Movie.find(array[num-1])
            Favourite.add(@current_user,val)
            puts "   Add another Movie or go to Main Menu by pressing the [e] key"
        end
    end 
     


end 