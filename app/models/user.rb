class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :offers
  has_many :reservations
  has_many :chatrooms_as_senior, foreign_key: :user_senior, class_name: 'Chatroom'
  has_many :chatrooms_as_junior, foreign_key: :user_junior, class_name: 'Chatroom'
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # enum role: {
  #   junior: 0,
  #   senior: 10
  # }

  def chatrooms
    lol = chatrooms_as_senior + chatrooms_as_junior
    lol.uniq
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
