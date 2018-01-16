class Flight < ApplicationRecord
  belongs_to :origin, class_name: "Airport"
  belongs_to :destination, class_name: "Airport"
  has_many :bookings
  has_many :passengers, through: :bookings
  before_save :add_duration

  def add_duration
    time_delta = arrival_time - departure_time
    self.duration = "#{(time_delta / 3600).to_i.abs}h#{(time_delta % 3600 / 60).to_i}m"
  end
end
