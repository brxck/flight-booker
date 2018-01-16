class FlightsController < ApplicationController
  def search
    # Options for select
    @flight = Flight.new
    @airports = Airport.select('code, id').map { |i| [i.code, i.id] }

    # Search results
    if params[:origin_id] && params[:destination_id]
      @flights = Flight.where(origin_id:      params[:origin_id],
                              destination_id: params[:destination_id])
    else
      @flights = Flight.all
    end
  end
end