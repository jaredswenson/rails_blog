class User < ApplicationRecord
	has_many :posts
	has_many :comments
	has_many :users, through: :user_friends
	has_many :user_friends
end
