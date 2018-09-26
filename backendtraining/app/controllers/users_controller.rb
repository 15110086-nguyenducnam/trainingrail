class UsersController < ApplicationController

  layout "users"
  def index
    @user = current_user
    @user_posts = @user.posts.all  
    @comment = Comment.new
    # binding.pry
  end
end
