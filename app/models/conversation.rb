class Conversation < ApplicationRecord
  # validates presence: true

  belongs_to :starter, class_name: "User"
  has_many :messages, dependent: :destroy
  has_many :invitations
  has_many :users, through: :invitations


  def participants
    users.to_a << starter
  end
end