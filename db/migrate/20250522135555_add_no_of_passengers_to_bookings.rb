class AddNoOfPassengersToBookings < ActiveRecord::Migration[8.0]
  def change
    add_column :bookings, :no_of_passengers, :integer
  end
end
