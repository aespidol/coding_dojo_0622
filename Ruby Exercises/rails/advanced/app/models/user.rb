class User < ActiveRecord::Base
	has_many :posts
	has_many :messages, through: :posts
	has_many :messages
	has_many :owners
	has_many :blogs, through: :owners
	has_many :comments, as: :imageable
	
	EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
	validates :first_name, :last_name, presence: true, length: { in: 2..20 }
	validates :email_address, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }

	before_save do 
		self.email_address.downcase!
	end
end
