class User < ApplicationRecord
  has_secure_password
  has_many :posts
  has_many :comments

  validates :name, presence: true
  # validates :email, presence: true
  # validates :name, presence: true
  validates :name, uniqueness: true
end
