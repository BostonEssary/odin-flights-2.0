class FlightsController < ApplicationController
  def index
    @flights = Flight.search(params[:departure_airport_id], params[:arrival_airport_id], params[:takeoff])
  end
end
