class Post < ApplicationRecord
  belongs_to :country
  belongs_to :category
  belongs_to :user
  has_many :likes
  validates :image, presence: true

  mount_uploader :image, ImageUploader

  def liked_by?(user)
    likes.where(user_id: user.id).exists?
  end

end
