class FixAirportsTable < ActiveRecord::Migration[8.0]
  def change
    remove_column :airports, :departure_airport, :string
    remove_column :airports, :arrival_airport, :string
    add_column :airports, :code, :string, null: false
  end
end
