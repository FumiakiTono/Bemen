class Teacher < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name,     presence: true
  validates :age,      presence: true
  validates :email,    presence: true
  validates :password, presence: true
  has_many  :messages
  has_many  :reviews
  has_many  :posts
  mount_uploader :image, ImageUploader
end
