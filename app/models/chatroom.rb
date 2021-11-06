class Chatroom < ApplicationRecord
  has_many :messages
  belongs_to :user_senior, class_name: 'User'
  belongs_to :user_junior, class_name: 'User'
end
