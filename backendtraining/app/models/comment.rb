class Comment < ApplicationRecord

  # association
  belongs_to :post

  # validate
  validates :comment_user, presence: true
  validates :post_id, presence: true
  validates :user_comment, presence: true
  
end
