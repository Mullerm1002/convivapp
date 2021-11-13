class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :offers
  has_many :reservations
  has_many :chatrooms_as_senior, foreign_key: :user_senior, class_name: 'Chatroom'
  has_many :chatrooms_as_junior, foreign_key: :user_junior, class_name: 'Chatroom'
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :avatar

  # attr_accessor :email, :password, :password_confirmation, :remember_me, :first_name


  # enum role: {
  #   junior: 0,
  #   senior: 10
  # }
  # validates :first_name, :last_name, :description, :birth_date, presence: true
  # validates :role, inclusion: { in: %w[junior senior] }
  # validates :student_card, presence: true, if: :role_junior?

  def chatrooms
    lol = chatrooms_as_senior + chatrooms_as_junior
    lol.uniq
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  # def role_junior?
  #   role == "junior"
  # end
end
