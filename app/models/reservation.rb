class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :offer
  enum status: {
    "pending" => 0,
    "accepted" => 1,
    "denied" => 2
  }

  def start_time
    offer.date
  end
end
