class PostsController < ApplicationController
  def index
    @post = Post.new
    @posts = Post.all
  end

  def create
    Post.create(content: params[:post][:content], user_id: current_user.id)
    puts "#{params.inspect}"
    redirect_to posts_path

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
