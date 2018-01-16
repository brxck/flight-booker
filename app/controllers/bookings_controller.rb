class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @flight = Flight.find(params[:flight_id])
    passenger_number = params[:number].to_i
    passenger_number.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to @booking
    else
      flash[:danger] = @booking.errors.full_messages
      redirect_to root_url
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id,
                                    :date,
                                    passengers_attributes: %i[id name email])
  end
end
