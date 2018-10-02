class Post < ApplicationRecord

  # association
  belongs_to :user
  has_many :likes, -> { where(like_user: true) }
  has_many :comments

  # validate
  validates :content, presence: true
  validates :user_id, presence: true

  attr_accessor :image
  # mount_uploader :image, ImageUploader
  mount_uploader :image, ImageUploader
end
