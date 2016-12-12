class ChangeFriendsName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :user_friends, :friends_id, :friend_id
  end
end
