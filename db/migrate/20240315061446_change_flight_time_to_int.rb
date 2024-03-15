class ChangeFlightTimeToInt < ActiveRecord::Migration[7.1]
  def change
    change_table :flights do |t|
      t.remove :flight_time
      
    end
    add_column :flights, :flight_time, :integer
  end
end
