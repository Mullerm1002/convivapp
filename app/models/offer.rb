class Offer < ApplicationRecord
  belongs_to :user, optional: true
  has_one :reservation
  has_many_attached :images
end
