class RemovePassengerFromBooking < ActiveRecord::Migration[5.1]
  def change
    remove_reference :bookings, :passenger_id
    add_reference :passengers, :booking, foreign_key: true
  end
end
