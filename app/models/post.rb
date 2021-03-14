class Post < ApplicationRecord
  belongs_to :user, optional: true
  
  validates :title, presence: true, length: { maximum: 20 }
  validates :subject, presence: true, length: { maximum: 30 }
  validates :content, presence: true, length: { maximum: 255 }
  validates :images, presence: true
  
  has_many :favorites, dependent: :destroy
  mount_uploaders :images, ImageUploader
end
