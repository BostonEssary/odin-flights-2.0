class FlightsController < ApplicationController
  def index
    @flights = Flight.search(params[:departure_airport_id], params[:arrival_airport_id], params["[takeoff(1i)]"], params["[takeoff(2i)]"], params["[takeoff(3i)]"])
  end
end
