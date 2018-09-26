class CommentsController < ApplicationController
  
  def create
    @comment = Comment.new(comment_params)
    @comment.save
    redirect_to posts_path
  end

  private 
  
  def comment_params
    params.require(:comment).permit( :comment_user, :user_comment, :post_id)
  end
end
