class Flight < ApplicationRecord
  belongs_to :from_airport, class_name: "Airport", foreign_key: :start_airport_id, optional: true
  belongs_to :to_airport, class_name: "Airport", foreign_key: :finish_airport_id, optional: true

  def self.format_dates_for_selection
    all.map do |flight| 
      date = flight.start_time.strftime("%d/%m/%Y")
      [date, flight.start_time]
    end.uniq { |date| date.first }.sort.reverse
  end

  def self.search(search_params)
    selected_date = search_params[:date].scan(/\d{4}-\d{2}-\d{2}/)
    to_airport = search_params[:to_id]
    from_airport = search_params[:from_id]
    includes([:from_airport, :to_airport]).where(start_time: ("#{selected_date} 00:00:01 UTC".."#{selected_date} 23:59:59"), start_airport_id: from_airport, finish_airport_id: to_airport)
  end
end
