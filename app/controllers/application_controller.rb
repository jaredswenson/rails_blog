class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def current_user 
  	if session[:user_id]
  		User.find(session[:user_id])
  		
  	end
  	# @post = Post.all(params[:post][:content])
  end
end
