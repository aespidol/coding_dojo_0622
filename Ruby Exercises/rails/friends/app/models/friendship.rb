class Friendship < ActiveRecord::Base
  has_many :friend, class_name: "Friendship", foreign_key: "user_id"
  belongs_to :user, class_name: "Friendship"
end
