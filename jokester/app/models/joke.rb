class Joke < ActiveRecord::Base
	validates :joke_posts, presence: true
end
