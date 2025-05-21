# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

[ "LHR", "MUC", "DUB", "OVI", "FRA", "CDG", "ATH", "BUD", "MAD", "BER", "SCH", "LIS" ].each do |airport_code|
  Airport.find_or_create_by!(code: airport_code)
end


Flight.create!([
  {
    start_date: Date.new(2025, 6, 1),
    start_time: Time.new(2025, 6, 1, 8, 0, 0),
    duration: 90,
    departure_airport_id: 1, # LHR
    arrival_airport_id: 2    # MUC
  },
  {
    start_date: Date.new(2025, 6, 2),
    start_time: Time.new(2025, 6, 2, 10, 30, 0),
    duration: 120,
    departure_airport_id: 3, # DUB
    arrival_airport_id: 5    # FRA
  },
  {
    start_date: Date.new(2025, 6, 3),
    start_time: Time.new(2025, 6, 3, 14, 15, 0),
    duration: 60,
    departure_airport_id: 4, # OVI
    arrival_airport_id: 6    # CDG
  },
  {
    start_date: Date.new(2025, 6, 4),
    start_time: Time.new(2025, 6, 4, 9, 0, 0),
    duration: 75,
    departure_airport_id: 2, # MUC
    arrival_airport_id: 7    # ATH
  },
  {
    start_date: Date.new(2025, 6, 5),
    start_time: Time.new(2025, 6, 5, 13, 45, 0),
    duration: 90,
    departure_airport_id: 8, # BUD
    arrival_airport_id: 9    # MAD
  },
  {
    start_date: Date.new(2025, 6, 6),
    start_time: Time.new(2025, 6, 6, 11, 0, 0),
    duration: 100,
    departure_airport_id: 10, # BER
    arrival_airport_id: 1     # LHR
  },
  {
    start_date: Date.new(2025, 6, 7),
    start_time: Time.new(2025, 6, 7, 6, 30, 0),
    duration: 80,
    departure_airport_id: 6, # CDG
    arrival_airport_id: 4    # OVI
  },
  {
    start_date: Date.new(2025, 6, 8),
    start_time: Time.new(2025, 6, 8, 17, 0, 0),
    duration: 60,
    departure_airport_id: 5, # FRA
    arrival_airport_id: 3    # DUB
  },
  {
    start_date: Date.new(2025, 6, 9),
    start_time: Time.new(2025, 6, 9, 12, 15, 0),
    duration: 90,
    departure_airport_id: 7, # ATH
    arrival_airport_id: 8    # BUD
  },
  {
    start_date: Date.new(2025, 6, 10),
    start_time: Time.new(2025, 6, 10, 15, 0, 0),
    duration: 70,
    departure_airport_id: 9,  # MAD
    arrival_airport_id: 2     # MUC
  },
  {
    start_date: Date.new(2025, 6, 11),
    start_time: Time.new(2025, 6, 11, 18, 45, 0),
    duration: 110,
    departure_airport_id: 3,  # DUB
    arrival_airport_id: 10    # BER
  }
])
