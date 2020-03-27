require_relative '../config/environment.rb'
require 'pry'

User.destroy_all 
Joke.destroy_all
FavoriteJoke.destroy_all


#seed users
richard = User.create(name: "Richard")
ann = User.create(name: "Ann")
mary = User.create(name: "Mary")
deijah = User.create(name: "Deijah")

# seed jokes
joke1 = Joke.create(name: "Cookie", theme: "Q&A", text: "Q: Why did the cookie go to the hospital? // A: Because he felt crummy.")
joke2 = Joke.create(name: "Bikes", theme: "Q&A", text: "Q: Why did the bicycle collapse? // A: it was two tired.")
joke3 = Joke.create(name: "Theatre Joke", theme: "Q&A", text: "Why do we tell actors to break a leg? // A: because every play has a cast.")
joke4 = Joke.create(name: "SQL Tables", theme: "CODE", text: "A SQL Query walks into a bar, goes up to two tables and asks... Can I join you?")
joke5 = Joke.create(name: "Eyebrow Joke", theme: "COUPLES", text: "I told my wife she was drawing her eyebrows too high. She looked surprised.")
joke6 = Joke.create(name: "Handy Joke", theme: "PUNS", text: "I broke my finger yesterday. On the other hand, I'm okay.")
joke7 = Joke.create(name: "Holy Water", theme: "DAD JOKES", text: "How do you make holy water? You boil the hell out of it.")
joke8 = Joke.create(name: "Politics Are Funny", theme: "DAD JOKES", text: "The secret service isn't allowed to yell 'Get down!' anymore when the president is about to be attacked. Now they have to yell 'Donald, duck!'")
joke9 = Joke.create(name: "Which Came First?", theme: "DAD JOKES", text: "I ordered a chicken and an egg from Amazon. I’ll let you know")
joke10 = Joke.create(name: "Coder Money", theme: "CODE", text: "Q:What's the object-oriented way to become wealthy? // A: Inheritance")
joke11 = Joke.create(name: "Take You Out?", theme: "COVID19", text: "If COVID-19 doesn't take you out... Can I?")
joke12 = Joke.create(name: "Prince Charmin", theme: "COVID19", text: "Baby, do you need toilet paper? Because I can be your Prince Charmin.")
joke13 = Joke.create(name: "Stay.", theme: "COVID19", text: "I saw you from across the bar. Stay there.")
joke14 = Joke.create(name: "Clock", theme: "DAD JOKES", text: "What’s your favorite time on a clock? // 6:30, hands down!")
joke15 = Joke.create(name: "Tire", theme: "DAD JOKES", text: "What’s the difference between a poorly dressed man on a tricycle and a well dressed man on a bicycle? // A: …attire")
joke16 = Joke.create(name: "Cow", theme: "Q&A", text: "Q: What do you call a cow with two legs? // A: Lean beaf." )
joke17 = Joke.create(name: "Films in common", theme: "Q&A", text: "Q: What do the films The Sixth Sense and Titanic have in common? // A: Icy dead people.")
joke18 = Joke.create(name: "ET", theme: "Q&A", text: "Q: What's ET short for? // A: He's only got little legs.")
joke19 = Joke.create(name: "Finland", theme: "Q&A", text: "Q: What do you call a programmer from Finland? // A: Nerdic" )
joke20 = Joke.create(name: "Developer", theme: "CODE", text: "Q: What do you call a pickup line from a developer? // A: A pull request.")
joke21 = Joke.create(name: "Internet Marriage", theme: "CODE", text: "Q: what do you call a woman you married off the internet? // A: Wife-I")
joke22 = Joke.create(name: "U.S. States", theme: "Q&A", text: "Q: If Mississippi bought Virginia a New Jersey, what would Delaware? // A: Idaho... Alaska! 
")
joke23 = Joke.create(name: "Grandma", theme: "Q&A", text:"Q: What do you call having your grandma on speed dial? // A: Instagram.")



#seed favorite jokes (user_id, joke_id)

fav_joke1 = FavoriteJoke.create(user_id: richard.id, joke_id: joke1.id)
fav_joke2 = FavoriteJoke.create(user_id: ann.id, joke_id: joke1.id)
fav_joke3 = FavoriteJoke.create(user_id: deijah.id,joke_id: joke2.id)
fav_joke4 = FavoriteJoke.create(user_id: mary.id, joke_id: joke3.id)
fav_joke5 = FavoriteJoke.create(user_id:richard.id, joke_id: joke5.id)
fav_joke6 = FavoriteJoke.create(user_id:mary.id, joke_id:joke5.id)
fav_joke7 = FavoriteJoke.create(user_id:deijah.id, joke_id:joke7.id)


# Pry.start
0