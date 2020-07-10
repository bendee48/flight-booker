class PassengerMailer < ApplicationMailer
  def self.booking_confirmed(booking)
    passengers = booking.passengers
    
    passengers.each do |p|
      send_booking_confirmation(p.email, p.name, booking).deliver_later
    end
  end

  # To send mulitple emails use additional method to return mail object first  
  def send_booking_confirmation(email, name, booking)
    @booking = booking
    @name = name
    @flight = booking.flight
    mail(to: email, subject: 'Thanks for booking with us!')
  end
end
