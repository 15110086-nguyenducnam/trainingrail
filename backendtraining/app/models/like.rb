class Like < ApplicationRecord
  
  # association
  belongs_to :post

  # validaete
  validates :post_id, presence: true
  validates :user_like, presence: true

end
