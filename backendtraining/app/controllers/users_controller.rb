class UsersController < ApplicationController

  layout "users"

  def index
    @user = current_user
    @user_posts = @user.posts.all  
    @comment = Comment.new
    # binding.pry
  end

  def show
    @user = User.find(params[:id])
    # binding.pry
  end

  def update
    @user = User.find(params[:id])
    
    if @user.update_attributes(user_params)
      flash[:notice] = "Updated Successfully"
    else
      flash[:notice] = "Updated Fail"
    end
    redirect_to  users_path
  end

  private
  def user_params
    params.require(:user).permit(:avatar)
  end
end
