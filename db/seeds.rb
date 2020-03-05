

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
moon = Movie.create(title:"Moon", genre: "sci-fi", year:2009, director:"Duncan Jones")
marvins_room = Movie.create(title:"Marvin's Room", genre: "drama", year:1996, director:"Jerry Zaks")
quills = Movie.create(title:"Quills", genre: "biography,drama", year:2000, director:"Philip Kaufman")
the_man_from_earth = Movie.create(title:"The Man from Earth", genre: "sci-fi", year:2007, director:"Richard Schenkman")
airport = Movie.create(title:"Airport", genre: "action,drama,thriller", year:1970, director:"George Seaton")
bernie = Movie.create(title:"Bernie", genre: "comedy", year:2011, director:"Richard Linklater")
jeff_who_lives_at_home = Movie.create(title:"Jeff, Who lives at Home", genre: "comedy", year:2011, director:"Jay Duplas")
the_kings_speech = Movie.create(title:"The King's Speech", genre: "biography,drama", year:2010, director:"Tom Hooper")
to_be_or_not_to_be = Movie.create(title:"To Be or Not to Be", genre: "Action", year:1983, director:"Alan Johnson")
memento = Movie.create(title:"Memento", genre: "Thriller", year:2000, director:"Christopher Nolan")
inception = Movie.create(title:"Inception", genre: "Action,Adventure,Sci-Fi", year:2010, director:"Christopher Nolan")
the_prestige = Movie.create(title:"The Prestige", genre: "Mystery", year:2006, director:"Christopher Nolan")



puts "movie_moods"

MovieMood.create(movie:moon, mood:cheerful)
MovieMood.create(movie:marvins_room, mood:calm)
MovieMood.create(movie:quills, mood:angry)
MovieMood.create(movie:quills, mood:calm)
MovieMood.create(movie:the_man_from_earth, mood:cheerful)
MovieMood.create(movie:airport, mood:lonely)
MovieMood.create(movie:airport, mood:angry)
MovieMood.create(movie:airport, mood:gloomy)
MovieMood.create(movie:bernie, mood:gloomy)





puts 'finished seeding'