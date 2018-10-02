class Like < ApplicationRecord
  
  # association
  belongs_to :post

  # validaete
  validates :post_id, presence: true
  validates :user_like, presence: true
  validates :like_user, inclusion: { in: [true, false] }

  # funtion
  def update_like(id_post, name_user)
    if Like.where(["post_id = ? and user_like = ?", id_post, name_user]).count == 0
      like_user = Like.new(post_id: id_post, user_like: name_user,like_user: true)
    else
      like_user = Like.find_by(post_id: id_post, user_like: name_user)
      if like_user.like_user
        like_user.like_user = false
      else
        like_user.like_user = true
      end
    end
    like_user.save
  end
  
end
