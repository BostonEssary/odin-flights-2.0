class CreateFlights < ActiveRecord::Migration[7.1]
  def change
    create_table :flights do |t|
      t.references :airport, null: false, foreign_key: true
      t.datetime :takeoff
      t.time :flight_time

      t.timestamps
    end
  end
end
