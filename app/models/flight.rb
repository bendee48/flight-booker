class Flight < ApplicationRecord
  belongs_to :from_airport, class_name: "Airport", foreign_key: :start_airport_id, optional: true
  belongs_to :to_airport, class_name: "Airport", foreign_key: :finish_airport_id, optional: true

  def self.format_dates_for_selection
    all.map do |flight| 
      date = flight.start_time.strftime("%d/%m/%Y")
      [date, flight.start_time]
    end.uniq { |date| date.first }.sort.reverse
  end
end
