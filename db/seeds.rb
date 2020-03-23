require_relative '../config/environment.rb'
require 'pry'

#seed users
richard = User.create(name: "Richard")
ann = User.create(name: "Ann")
mary = User.create(name: "Mary")
deijah = User.create(name: "Deijah")


# seed jokes
joke1 = Joke.create(name: "Brazil", theme: "Q&A", text: "Q: How many south americans does  it take to screw in a lightbulb? A: a Brazilian")
joke2 = Joke.create(name: "Bikes", theme: "Q&A", text: "Q: Why did the bicycle collapse A: it was two tired.")
joke3 = Joke.create(name: "Theatre Joke", theme: "Q&A", text: "Why do we tell actors to break a leg? A: because every play has a cast.")
joke4 = Joke.create(name: "SQL Tables", theme: "Code", text: "A SQL Query walks into a bar, goes up to two tables and asks...Can I join you?")
joke5 = Joke.create(name: "Eyebrow Joke", theme: "Couples", text: "I told my wife she was drawing her eyebrows too high. She looked surprised.")
joke6 = Joke.create(name: "Handy Joke", theme: "Puns", text: "I broke my finger yesterday. On the other hand, I'm okay.")
joke7 = Joke.create(name: "Holy Water", theme: "Dad Jokes", text: "How do you make holy water? You boil the hell out of it.")
joke8 = Joke.create(name: "Politics Are Funny", theme: "Dad Jokes", text: "The secret service isn't allowed to yell 'Get down!' anymore when the president is about to be attacked. Now they have to yell 'Donald, duck!'")
joke9 = Joke.create(name: "Which Came First?", theme: "Dad Jokes", text: "I ordered a chicken and an egg from Amazon. I’ll let you know")
joke10 = Joke.create(name: "Coder Money", theme: "Code", text: "Q:What's the object-oriented way to become wealthy? A: Inheritance")

#seed favorite jokes (user_id, joke_id)

fav_joke1 = FavoriteJoke.create(user_id: richard.id, joke_id: joke1.id)
fav_joke2 = FavoriteJoke.create(user_id: ann.id, joke_id: joke1.id)
fav_joke3 = FavoriteJoke.create(user_id: deijah.id,joke_id: joke2.id)
fav_joke4 = FavoriteJoke.create(user_id: mary.id, joke_id: joke3.id)
fav_joke5 = FavoriteJoke.create(user_id:richard.id, joke_id: joke5.id)
fav_joke6 = FavoriteJoke.create(user_id:mary.id, joke_id:joke5.id)
fav_joke7 = FavoriteJoke.create(user_id:deijah.id, joke_id:joke5.id)

# Pry.start
# 0