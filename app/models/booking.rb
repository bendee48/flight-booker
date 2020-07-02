class Booking < ApplicationRecord
  belongs_to :flight
  has_many :passengers, inverse_of: :booking
  validates_presence_of :passengers
  #reject_if will any passenger forms left blank
  accepts_nested_attributes_for :passengers, reject_if: :all_blank
end
