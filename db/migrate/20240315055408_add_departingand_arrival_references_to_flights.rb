class AddDepartingandArrivalReferencesToFlights < ActiveRecord::Migration[7.1]
  def change
    change_table :flights do |t|
      remove_reference :flights, :airport
      t.references :departure_airport
      t.references :arrival_airport
    end

    add_foreign_key :flights, :airports, column: :departure_airport_id, primary_key: :id
    add_foreign_key :flights, :airports, column: :arrival_airport_id, primary_key: :id
  end
end
