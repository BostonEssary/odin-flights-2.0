class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: "Airport"
  belongs_to :arrival_airport, class_name: "Airport"

  def takeoff_formatted
    takeoff.strftime("%m/%d/%Y")
  end

  def display_info
    "#{departure_airport.code} to #{arrival_airport.code}. Takeoff: #{takeoff_formatted}"
  end

  def self.search(departure_airport, arrival_airport, year, month, date)
    if year != nil
      date = Time.new(year, month, date)
    end
    where("departure_airport_id = ? AND arrival_airport_id = ? AND takeoff = ?", departure_airport, arrival_airport, date)
  end
end
