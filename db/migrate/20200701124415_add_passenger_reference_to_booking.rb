class AddPassengerReferenceToBooking < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookings, :passenger, index: true, foreign_key: true
  end
end
