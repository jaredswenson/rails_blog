class User < ApplicationRecord
	has_many :posts
	has_many :comments
	has_many :friends, through :user_friends
	has_many :friends
end
