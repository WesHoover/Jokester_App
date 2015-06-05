class Joke < ActiveRecord::Base
	validates :jokes, presence: true
end
