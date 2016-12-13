class UserfriendsController < ApplicationController
  def index
    @users = User.all
    @user = current_user
  end

  def create
  end

  def new
    @friend = UserFriend.create(friend_id: params[:user_id], user_id: current_user.id)
    redirect_to user_path current_user 
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
    UserFriend.find(params[:id]).destroy
    redirect_to user_path current_user
  end
end
