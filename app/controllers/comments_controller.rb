class CommentsController < ApplicationController
  def index
    @user = current_user
    @comment = Comment.new
    @post_id = params[:post_id]
  end

  def create
    puts "#{params[:post_id]}"
    @comment = Comment.create(content: params[:comment][:content], post_id: params[:post_id], user_id: current_user.id)
    redirect_to user_posts_path
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
  end
end
