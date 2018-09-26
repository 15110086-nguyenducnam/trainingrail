class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # association
  has_many :comment
  has_many :posts
  # validate
  validates :image, presence: true

  attr_accessor :avatar
  # mount_uploader :image, ImageUploader
  mount_uploader :avatar, AvatarUploader
end