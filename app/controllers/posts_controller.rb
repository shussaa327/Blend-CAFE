class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to user_path(current_user)
    else
      redirect_to root_path
    end
  end

  def edit
  end

  def show
  end

  private

  def post_params
    params.require(:post).permit(:comment, :image, :rating)
  end
end
