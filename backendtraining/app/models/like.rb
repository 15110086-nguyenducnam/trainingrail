class Like < ApplicationRecord
  
  # association
  belongs_to :post

  # validaete
  validates :post_id, presence: true
  validates :user_like, presence: true
  validates :like_user, inclusion: { in: [true, false] }

end
