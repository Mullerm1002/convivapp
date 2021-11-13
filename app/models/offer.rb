class Offer < ApplicationRecord
  belongs_to :user, foreign_key: :user_id
  has_one :reservation, dependent: :destroy
  geocoded_by :address
  has_one_attached :photo
  after_validation :geocode, if: :will_save_change_to_address?
  acts_as_taggable
  acts_as_taggable_on :tags
end
