class Comment < ActiveRecord::Base
	validates :posts, presence: true
end
