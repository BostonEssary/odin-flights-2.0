class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: "Airport"
  belongs_to :arrival_airport, class_name: "Airport"

  def takeoff_formatted
    takeoff.strftime("%m/%d/%Y")
  end

  def self.search(departure_airport, arrival_airport, takeoff)

    where("departure_airport_id = ? AND arrival_airport_id = ? AND takeoff = ?", departure_airport, arrival_airport, takeoff)

  end
end
