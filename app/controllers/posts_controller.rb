class PostsController < ApplicationController
  def index
    @user = current_user
    @post = Post.new
    @posts = @user.posts
  end

  def create
    Post.create(content: params[:post][:content], user_id: current_user.id)
    puts "#{params.inspect}"
    redirect_to user_posts_path
    # creates new post on the post.id with user.id
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
