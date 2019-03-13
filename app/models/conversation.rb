class Conversation < ApplicationRecord
  belongs_to :starter, class_name: "User"
  has_many :messages
  has_many :users, through: :messages

end
