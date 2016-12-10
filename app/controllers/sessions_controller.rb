class SessionsController < ApplicationController
  def index
  end

  def create
      puts "Params Are: #{params.inspect}"
    @user = User.where(username: params[:username], password: params[:password]).first
    # puts "DID WE GET THE USER? #{@user}"
    if @user
      session[:user_id] = @user.id
      redirect_to user_path @user
    else
      redirect_to login_path
    end
  end

  def new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end
