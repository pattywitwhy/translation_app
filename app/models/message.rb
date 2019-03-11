class Message < ApplicationRecord

  belongs_to :user
  has_many :conversations


  #create all the translation methods in here!!
end
