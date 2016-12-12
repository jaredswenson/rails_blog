class UserFriend < ApplicationRecord
	belongs_to :user
	belongs_to :user , foreign_key: "friend_id", class_name: "User"
end
