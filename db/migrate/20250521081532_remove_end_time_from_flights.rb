class RemoveEndTimeFromFlights < ActiveRecord::Migration[8.0]
  def change
    remove_column :flights, :end_time, :time
  end
end
