class FlightsController < ApplicationController
  def search
    # Options for select
    @flight = Flight.new
    @origins = Flight.all.map{ |x| [x.origin.code, x.origin.id] }
    @destinations = Flight.all.map{ |x| [x.destination.code, x.destination.id] }

    # Search results
    @flights = Flight.where(origin_id:      params[:origin_id],
                            destination_id: params[:destination_id])
  end
end
