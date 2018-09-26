class PostsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @posts = Post.all
    @comment = Comment.new
    # binding.pry
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(posts_params)
    if @post.save
      flash[:notice] = "Successfully post comment"
    else
      flash[:notice] = "Unsccessfully post comment"
    end
    redirect_to posts_path
  end

  private 
  
  def posts_params
    params.require(:post).permit(:content, :user_id, :image)
  end
end
