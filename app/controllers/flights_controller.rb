class FlightsController < ApplicationController
  def search
    # Options for select
    @flight = Flight.new
    @airports = Airport.select('code, id').map { |i| [i.code, i.id] }

    # Search results
    if params[:origin_id] && params[:destination_id]
      @flights = Flight.where(origin_id:      params[:origin_id],
                              destination_id: params[:destination_id])
      @flights = @flights.paginate(page: params[:page], per_page: 10)
      @search_params = { date: date_params, number: params[:number] }
    else
      @flights = Flight.all.paginate(page: params[:page], per_page: 10)
      @search_params = { date: Date.today, number: 1 }
    end
  end

  def date_params
    params.require(:date).permit(:day, :month, :year)
  end
end
