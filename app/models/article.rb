class Article < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :title, presence: true
  validates :text, presence: true
  belongs_to :user
end
