# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Airport.destroy_all
Flight.destroy_all

atl = Airport.create!({code: "ATL"})
lax = Airport.create!({code: "LAX"})
jfk = Airport.create!({code: "JFK"})
phx = Airport.create!({code: "PHX"})

Flight.create!([{
    takeoff: Time.new(2024, 9, 13),
    departure_airport: lax,
    arrival_airport: atl,
    flight_time: 3
},
{
    takeoff: Time.new(2024, 12, 15),
    departure_airport: phx,
    arrival_airport: jfk,
    flight_time: 7
},
{
    takeoff: Time.new(2024, 6, 23),
    departure_airport: jfk,
    arrival_airport: atl,
    flight_time: 4
}])