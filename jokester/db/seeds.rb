# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Joke.create(joke_posts: "Why didn't the skeleton the road? He didn't have the guts.")
Joke.create(joke_posts: "How many developers does it take to screw in a lightbulb? Banana!")
Joke.create(joke_posts: "What do you call a fake noodle? An Impasta")
User.create(name: "Miguel", email: "miguel@email.com", password_digest:"password")
User.create(name: "Wes", email: "wes@email.com", password_digest:"password")
User.create(name: "Zach", email: "zach@email.com", password_digest:"password")
Comment.create(posts: "Hilarious!")
Comment.create(posts: "LROFL!")
Comment.create(posts: "Eh, not that funny.")