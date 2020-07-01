class AddBookingReferenceToPassenger < ActiveRecord::Migration[6.0]
  def change
    add_reference :passengers, :booking, foreign_key: true, index: true
  end
end
