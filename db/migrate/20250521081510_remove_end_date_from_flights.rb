class RemoveEndDateFromFlights < ActiveRecord::Migration[8.0]
  def change
    remove_column :flights, :end_date, :date
  end
end
