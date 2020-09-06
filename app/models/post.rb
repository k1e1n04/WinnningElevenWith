class Post < ApplicationRecord
  validates :body, {presence: true, length: {maximum: 140}}
  mount_uploader :image, ImageUploader
  mount_uploader :video, VideoUploader
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user
end
