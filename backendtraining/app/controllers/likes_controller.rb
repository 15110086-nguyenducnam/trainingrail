class LikesController < ApplicationController

  def update
    # if Like.where(["post_id = ? and user_like = ?", params[:id], params[:user]]).count == 0
    #   like_user = Like.new(post_id: params[:id], user_like: params[:user],like_user: true)
    # else
    #   like_user = Like.find_by(post_id: params[:id], user_like: params[:user])
    #   if like_user.like_user
    #     like_user.like_user = false
    #   else
    #     like_user.like_user = true
    #   end
    #   # binding.pry
    # end
    # like_user.save
    like = Like.new
    if like.update_like(params[:id], params[:user])
      flash[:notice] = "Successful"
    else
      flash[:notice] = "Fail"
    end
    @post = Post.find(params[:id]).decorate
  end
end