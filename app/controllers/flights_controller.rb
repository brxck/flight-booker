class FlightsController < ApplicationController
  def search
    # Options for select
    @flight = Flight.new
    @origins = Flight.all.map{ |x| [x.origin.code, x.origin.id] }
    @destinations = Flight.all.map{ |x| [x.destination.code, x.destination.id] }
  end
end
