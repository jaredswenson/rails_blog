class UsersController < ApplicationController
  def index
    @user = User.new
    # create new user
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Your account was created successfully."
      redirect_to user_path @user
    else
      flash[:alert] = "There was a problem saving your account."
      redirect_to new_user_path
    end
    # save new user, unless there is a problem
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
    # finds the user to with that id
    puts "New params: #{params.inspect}"
  end

  def show
     @user = User.find(params[:id])
     # goes to current user home page
     @current = current_user
     # just here till original home button works
  end

  def update
    @user = User.find(params[:id]).update_attributes(params[:user])
    # finds current user and updates attr
    puts "These are the params #{params.inspect}"
    redirect_to user_path 
  end

  def destroy
    puts ": #{params.inspect}"
    current_user.destroy
    # deletes current user
    redirect_to users_path
  end

  private
  def user_params
    params.require(:user).permit(:fname, :lname, :username, :password)
  end

end
