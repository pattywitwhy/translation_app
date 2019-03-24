class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true
  # , uniqueness: true

  # belongs_to :conversation
  has_one_attached :image
  has_many :messages
  has_many :invitations
  has_many :conversations, through: :invitations
  has_many :started_conversations, class_name: "Conversation", foreign_key: "starter_id"

end
