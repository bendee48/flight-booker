class PassengerMailer < ApplicationMailer
  def booking_confirmed
    booking = params[:booking]
    p params
    @passenger_email = booking.passengers.first.email
    mail(to: @passenger_email, subject: 'Thanks for booking with us!' )
  end
end
