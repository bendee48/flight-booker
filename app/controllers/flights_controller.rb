class FlightsController < ApplicationController
  def index
    @airports = Airport.all
    @dates = Flight.all.map do |flight| 
      date = flight.start_time.strftime("%d/%m/%Y")
      [date, flight.start_time]
    end.uniq { |date| date.first }.sort

    if params[:date]
      selected_date = params[:date].scan(/\d{4}-\d{2}-\d{2}/)
      to_airport = params[:to_id]
      from_airport = params[:from_id]
      @search_results = Flight.includes([:from_airport, :to_airport]).where(start_time: ("#{selected_date} 00:00:01 UTC".."#{selected_date} 23:59:59"), start_airport_id: from_airport, finish_airport_id: to_airport)
    end

  end
end
