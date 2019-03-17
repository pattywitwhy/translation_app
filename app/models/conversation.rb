class Conversation < ApplicationRecord
  belongs_to :starter, class_name: "User"
  has_many :messages, dependent: :destroy
  has_many :users, through: :messages
  has_many :invitations
end
