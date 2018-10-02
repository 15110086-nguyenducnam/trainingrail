class PostsController < ApplicationController
  before_action :authenticate_user!
  # paginates_per 5

  def index
    @posts = Post.all.page(params[:page]).per(5).decorate
    # @posts = Post.all
    # binding.pry
    @comment = Comment.new
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
