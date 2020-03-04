class App 
    
    attr_accessor :current_user, :current_mood
    
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
                  set_mood
                  @current_user.update_attribute(:mood_id,@current_mood )
                    
                   menu_exit = 1
            
                elsif yesorno == "N"|| yesorno == "n"
                    #create an account 
                   @current_user = create_user
                    puts "\nUser Created!"
                     set_mood
                     @current_user.update_attribute(:mood_id,@current_mood )
                    menu_exit = 1 
                else 
                    puts "Please Enter Y or N"
                
                end
                end 
    end 
        
        
    def all_users 
        puts "\Please Select Your User"
        User.all_users
        get_user_id = gets.chomp.to_i
        new_user = val_user_input(get_user_id)
       @current_user =  User.find(new_user)
       puts "\nyou have selected #{@current_user.name}!"
    end 
        
        
    def set_mood 
        puts "\nWhat is your current mood"
        Mood.all_moods
        get_mood = gets.chomp.to_i 
         new_mood =  val_mood_input(get_mood)
        @current_mood = new_mood
            
    end 


         def val_mood_input(get_mood)
                while get_mood <= 0 || get_mood > Mood.all.count do 
                puts "Please enter a valid number"
                    get_mood = gets.chomp.to_i 

                 end 
           get_mood 

         end 


         def val_user_input(get_user)
            while get_user <= 0 || get_user > Mood.all.count do 
            puts "Please enter a valid number"
                get_user = gets.chomp.to_i 
         end 
        get_user 

     end 


         


        
        
        
        
        # def select_user 
            
        # end 

end 