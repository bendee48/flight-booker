class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @flight = Flight.find(params[:flight])
    @booking.flight = @flight
    passenger_num = params[:passengers].to_i
    passenger_num.times { @booking.passengers.build }
  end

  def create
    params[:booking][:flight_id] = params[:flight][:id]
    @booking = Booking.new(booking_params)
    
    if @booking.save
      flash.notice = "hurrah"
      redirect_to @booking
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @flight = @booking.flight
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
  end
end
