class CommentsController < ApplicationController
  def index
    @user = current_user
    # setting user as current user
    @comment = Comment.new
    # making new comment
    @post_id = params[:post_id]
    # setting the post id
  end

  def create
    puts "#{params[:post_id]}"
    @comment = Comment.create(content: params[:comment][:content], post_id: params[:post_id], user_id: current_user.id)
    # creating the comment with post.id it's tied to and user it's tied too.
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

  private
  def comment_params
    params.require(:comment).permit(:content, :user_id, :post_id)
  end

end
