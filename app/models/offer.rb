class Offer < ApplicationRecord
  belongs_to :user
  has_one :reservation, dependent: :destroy
end
