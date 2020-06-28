class Flight < ApplicationRecord
  belongs_to :from_airport, class_name: "Airport", foreign_key: :start_airport_id, optional: true
  belongs_to :to_airport, class_name: "Airport", foreign_key: :finish_airport_id, optional: true
end
