class Offer < ApplicationRecord
  belongs_to :user, optional: true
  has_one :reservation
end
