class Conversation < ApplicationRecord
  belongs_to :starter_id, class_name: "User"
  has_many :messages
  has_many :users, through: :messages
end
