class BookingsController < ApplicationController
  def new
    # Find the selected flight
    @flight = Flight.find(params[:flight_id])

    # Build booking form tied to the flight
    @booking = Booking.new(flight: @flight)
    no_of_passengers = params[:no_of_passengers].to_i
    no_of_passengers.times { @booking.passengers.build } if @booking.passengers.empty?

    @booking.no_of_passengers = no_of_passengers
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.no_of_passengers = params[:booking][:no_of_passengers].to_i

      if @booking.save
        redirect_to booking_path(@booking), notice: "Booking confirmed!"
      else
        render :new
      end
  end

  def show
    @booking = Booking.find(params[:id])
    @flight = @booking.flight
  end

  private
    def booking_params
      params.require(:booking).permit(
        :flight_id, :no_of_passengers,
        passengers_attributes: [ :name, :email ]
      )
    end
end
