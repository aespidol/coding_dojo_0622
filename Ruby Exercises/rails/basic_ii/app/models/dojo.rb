class Dojo < ActiveRecord::Base
	has_many :ninjas

	validates :name, presence: true
	validates :city, :state, presence: true, length: { in: 2..20 }

	before_destroy do 
		self.ninjas.destroy_all
	end
end
