class Flight < ApplicationRecord
  belongs_to :origin, class_name: "Airport"
  belongs_to :destination, class_name: "Airport"
  before_save :add_duration

  def add_duration
    time_delta = arrival_time - departure_time
    self.duration = "#{(time_delta / 3600).to_i.abs}h#{(time_delta % 3600 / 60).to_i}m"
  end
end
