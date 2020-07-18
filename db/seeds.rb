

# index = 0  
# array = []
# 4.times do 
#     User.create(name:"roni#{index}" )
#         index +=1
# end
puts "moods"
cheerful = Mood.create(mood_name:"Cheerful")
gloomy = Mood.create(mood_name:"Gloomy")
tense = Mood.create(mood_name:"Tense")
angry = Mood.create(mood_name:"Angry")
romantic = Mood.create(mood_name:"Romantic")
mysterious = Mood.create(mood_name:"Mysterious")
lonely = Mood.create(mood_name:"Lonely")
calm = Mood.create(mood_name:"Calm")
melancholy = Mood.create(mood_name:"Melancholy")

puts "Users"
User.create(name:"roni",mood:tense )
User.create(name:"ali", mood:romantic)
User.create(name:"nick",mood:angry)
User.create(name:"skye",mood:lonely)

puts "Movies"
moon = Movie.create(title:"Moon", genre: "Sci-Fi", year:2009, director:"Duncan Jones")
marvins_room = Movie.create(title:"Marvin's Room", genre: "Drama", year:1996, director:"Jerry Zaks")
quills = Movie.create(title:"Quills", genre: "Biography,Drama", year:2000, director:"Philip Kaufman")
the_man_from_earth = Movie.create(title:"The Man from Earth", genre: "Sci-Fi", year:2007, director:"Richard Schenkman")
airport = Movie.create(title:"Airport", genre: "Action,Drama,Thriller", year:1970, director:"George Seaton")
bernie = Movie.create(title:"Bernie", genre: "Comedy", year:2011, director:"Richard Linklater")
jeff_who_lives_at_home = Movie.create(title:"Jeff, Who lives at Home", genre: "Comedy", year:2011, director:"Jay Duplas")
the_kings_speech = Movie.create(title:"The King's Speech", genre: "Biography,Drama", year:2010, director:"Tom Hooper")
to_be_or_not_to_be = Movie.create(title:"To Be or Not to Be", genre: "Action", year:1983, director:"Alan Johnson")
memento = Movie.create(title:"Memento", genre: "Thriller", year:2000, director:"Christopher Nolan")
inception = Movie.create(title:"Inception", genre: "Action,Adventure,Sci-Fi", year:2010, director:"Christopher Nolan")
arrietty = Movie.create(title:"Arrietty", genre: "Fantasy", year:2010, director:"Hiromasa Yonebashi")
how_to_train_your_dragon = Movie.create(title:"How to Train Your Dragon", genre: "Fantasy", year:2010, director:"Chris Sanders")
alladin = Movie.create(title:"Aladdin", genre: "Fantasy", year:2014, director:"Guy Ritchie")
 Movie.create(title:"Eyes Wide Shut", genre: "Mystery,Thriller", year:1999, director:"Stanley Kubrick")
 Movie.create(title:"A Clockwork Orange", genre: "Drama,Sci-FI", year:1971, director:"Stanley Kubrick")
 Movie.create(title:"The Shining", genre: "Drama,Horror", year:1980, director:"Stanley Kubrick")
 Movie.create(title:"2001: A Space Odyssey", genre: "Adventure, Sci-Fi", year:1968, director:"Stanley Kubrick")
 Movie.create(title:"Full Metal Jacket", genre: "Drama", year:1987, director:"Stanley Kubrick")
 Movie.create(title:"A Star is Born", genre: "Romance", year:2018, director:"Bradley Cooper")
the_prestige = Movie.create(title:"The Prestige", genre: "Mystery", year:2006, director:"Christopher Nolan")


puts "movie_moods"


 Movie.all.each do |movie1| 
         movie1.genre.split(",").each do |element| 
                if element == "Horror" 
                    MovieMood.create(movie:movie1, mood:cheerful)
                elsif element == "Sci-Fi" 
                    MovieMood.create(movie:movie1, mood:cheerful)
                    MovieMood.create(movie:movie1, mood:mysterious)
                    MovieMood.create(movie:movie1, mood:calm)
                elsif element == "Comedy"
                    MovieMood.create(movie:movie1, mood:gloomy)
                    MovieMood.create(movie:movie1, mood:angry)
                    MovieMood.create(movie:movie1, mood:lonely)
                    MovieMood.create(movie:movie1, mood:tense)
                elsif element == "Adventure"
                    MovieMood.create(movie:movie1, mood:lonely)
                    MovieMood.create(movie:movie1, mood:gloomy)
                elsif element == "Romance"
                    MovieMood.create(movie:movie1, mood:romantic)
                elsif element == "Mystery" 
                    MovieMood.create(movie:movie1, mood:mysterious)
                elsif element == "Action" 
                    MovieMood.create(movie:movie1, mood:lonely)
                elsif element == "Fantasy"
                    MovieMood.create(movie:movie1, mood:calm)
                    MovieMood.create(movie:movie1, mood:melancholy)
                elsif element == "Drama"
                    MovieMood.create(movie:movie1, mood:melancholy)
                end
            end
        end
# MovieMood.create(movie:moon, mood:cheerful)
# MovieMood.create(movie:marvins_room, mood:calm)
# MovieMood.create(movie:quills, mood:angry)
# MovieMood.create(movie:quills, mood:calm)
# MovieMood.create(movie:the_man_from_earth, mood:cheerful)
# MovieMood.create(movie:airport, mood:lonely)
# MovieMood.create(movie:airport, mood:angry)
# MovieMood.create(movie:airport, mood:gloomy)
# MovieMood.create(movie:bernie, mood:gloomy)


puts 'finished seeding'