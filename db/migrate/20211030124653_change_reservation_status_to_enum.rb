class ChangeReservationStatusToEnum < ActiveRecord::Migration[6.1]
  # Reservation.all.each do |r|
  #   r.update_column(:status, "pending")
  # end
  def change
    change_column :reservations, :status, :integer, default: 0, using: 'status::integer'
  end
end
