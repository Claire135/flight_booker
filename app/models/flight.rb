class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: "Airport"
  belongs_to :arrival_airport, class_name: "Airport"
  has_many :bookings
  has_many :passengers, through: :bookings
  validates :no_of_passengers, presence: :true

  def formatted_date
    start_date.strftime("%d %B %Y")
  end

  def formatted_time
    start_time.strftime("%I:%M")
  end

  def self.formatted_date_options
    unique_dates = order(:start_date).pluck(:start_date).uniq
    unique_dates.map { |date| [ date.strftime("%d %B %Y") ] }
  end

  def self.formatted_time_options
    unique_times = order(:start_time).pluck(:start_time).uniq
    unique_times.map { |time| [ time.strftime("%I:%M") ] }
  end

  def self.search(params)
    flights = Flight.all

    if params[:departure_airport_id].present?
      flights = flights.where(departure_airport_id: params[:departure_airport_id])
    end

    if params[:arrival_airport_id].present?
      flights = flights.where(arrival_airport_id: params[:arrival_airport_id])
    end

    if params[:start_date].present?
      flights = flights.where(start_date: params[:start_date])
    end

    if params[:start_time].present?
      flights = flights.where(start_time: params[:start_time])
    end

    flights
  end
end
