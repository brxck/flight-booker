class AddInfoToBookings < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :passenger_number, :integer
    add_column :bookings, :date, :date
  end
end
