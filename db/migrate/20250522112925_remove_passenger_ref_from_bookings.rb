class RemovePassengerRefFromBookings < ActiveRecord::Migration[8.0]
  def change
    remove_reference :bookings, :passenger, foreign_key: true
  end
end
