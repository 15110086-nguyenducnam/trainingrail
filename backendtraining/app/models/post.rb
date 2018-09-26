class Post < ApplicationRecord
  belongs_to :user
  has_many :likes
  has_many :comments

  attr_accessor :image
  # mount_uploader :image, ImageUploader
  mount_uploader :image, ImageUploader
end
