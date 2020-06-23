class Flight < ApplicationRecord
  belongs_to :from_airport, class_name: "Airport"
end
