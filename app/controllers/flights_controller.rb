class FlightsController < ApplicationController
  def index
    @flights = Flight.search(params)
    @no_of_passengers = params[:no_of_passengers] || 1
  end


  def show
    @flight = Flight.find(params[:id])
  end
end
