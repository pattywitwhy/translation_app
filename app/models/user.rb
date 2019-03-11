class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :messages
  # has_many :conversations

  has_many :conversations, through: :messages
  
end
