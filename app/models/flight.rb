class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: "Airport"
  belongs_to :arrival_airport, class_name: "Airport"

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
end
