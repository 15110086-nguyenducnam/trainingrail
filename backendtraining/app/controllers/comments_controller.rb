class CommentsController < ApplicationController
  
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      flash[:notice] = "Successfully comment..."
    else
      flash[:notice] = "Unsuccessfully comment..."
    end
    redirect_to posts_path
  end

  private
  
  def comment_params
    params.require(:comment).permit(:comment_user, :user_comment, :post_id)
  end
end
