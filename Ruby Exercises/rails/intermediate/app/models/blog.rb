class Blog < ActiveRecord::Base
	has_many :posts
	has_many :messages, through: :posts

	validates :name, :description, presence: true
	before_destroy do 
		self.posts.destroy_all
	end
end
