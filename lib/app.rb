class App 
    
    attr_accessor :current_user, :current_mood
    
    def greet
        puts "\n                      Welcome to Movie Moods\n"
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
                    puts "Please Enter Y or N"
                
                end
                end 
    end 
        
        
    def select_user
        puts "\nPlease Select Your User"
        User.all_users
        get_user_id = gets.chomp.to_i
        new_user = val_user_input(get_user_id)
       @current_user =  User.find(new_user)
       puts "\n                 You have selected #{@current_user.name}!"
    end 
        
        
    def set_mood 
        puts "\nWhat is your current mood"
        Mood.all_moods
        get_mood = gets.chomp.to_i 
         new_mood =  val_mood_input(get_mood)
        @current_mood = Mood.find(new_mood)
        
        
        puts "\nYour current mood is set to #{Mood.find(new_mood).mood_name}"
            
    end 


         def val_mood_input(get_mood)
                while get_mood <= 0 || get_mood > Mood.all.count do 
                puts "Please enter a valid number"
                    get_mood = gets.chomp.to_i 

                 end 
           get_mood 

         end 


         def val_user_input(get_user)
            while get_user <= 0 || get_user > User.all.count do 
            puts "Please enter a valid number"
                get_user = gets.chomp.to_i 
         end 
        get_user 

     end 

     def val_main_menu(num)
        while num <= 0 || num > 3 do 
            puts "Please enter a valid number"
                num= gets.chomp.to_i 
         end 
       num

     end 


     


    def main_menu
        exit_val = 0 
        while exit_val == 0 do 
            exit_val = 0 
        puts "           Please enter a number "
        puts "1. Show movie suggestions based on your mood"
        puts "2. Change you current mood"
        puts "3. Delete your profile"
      num= gets.chomp.to_i
       option = val_main_menu(num)
       if option == 1
       random_movies
       exit_val = 1
        elsif option == 2
        set_mood
        
        elsif option == 3
        puts "this would delete the user"
       
        else
        puts "please select a valid number"
            end

        end 
    end 

    def random_movies 
        puts "Here's a list of movies based on your mood"
        @current_user.all_movies
    
    end 


    # def delete_user 
        
    # end 
     


         

end 