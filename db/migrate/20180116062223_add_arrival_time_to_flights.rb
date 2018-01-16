class AddArrivalTimeToFlights < ActiveRecord::Migration[5.1]
  def change
    add_column :flights, :arrival_time, :time
  end
end
