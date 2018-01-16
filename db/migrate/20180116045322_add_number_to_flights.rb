class AddNumberToFlights < ActiveRecord::Migration[5.1]
  def change
    add_column :flights, :number, :integer
    add_column :flights, :departure_time, :time
  end
end
