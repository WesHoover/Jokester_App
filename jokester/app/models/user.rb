class User < ActiveRecord::Base
	validates( 
		:name, length: {maximum: 50} 
	)
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates(
		 :email, presence: true, 
		length: {maximum: 100}, 
		format: {with: VALID_EMAIL_REGEX},
		 uniqueness: true
	)
	 has_secure_password
	validates :password, length: {minimum: 6}
end
