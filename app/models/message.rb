class Message < ApplicationRecord
  validates  :body, presence: true
  belongs_to :user
  belongs_to :teacher
  mount_uploader :image, ImageUploader
end
