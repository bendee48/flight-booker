class RemoveReferenceFromBooking < ActiveRecord::Migration[6.0]
  def change
    remove_reference :bookings, :passenger, foreign_key: true, index: true
  end
end
