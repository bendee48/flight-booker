class PassengerMailer < ApplicationMailer
  def self.booking_confirmed(booking)
    passenger_emails = booking.passengers.map { |p| p.email }
    
    passenger_emails.each do |email|
      send_booking_confirmation(email).deliver_later
    end
  end

  def send_booking_confirmation(email)
    mail(to: email, subject: 'Thanks for booking with us!')
  end
end
