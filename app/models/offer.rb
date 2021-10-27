class Offer < ApplicationRecord
  belongs_to :user, foreign_key: :user_id
  has_one :reservation, dependent: :destroy
end
