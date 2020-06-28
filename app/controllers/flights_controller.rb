class FlightsController < ApplicationController
  def index
    @airports = Airport.all
    @dates = Flight.all.map do |flight| 
      date = flight.start_time.strftime("%d/%m/%Y")
      [date, flight.start_time]
    end.uniq { |date| date.first }.sort.reverse

    selected_date = params[:date]
    @search_results = Flight.where('start_time = ?', selected_date)
    p selected_date
  end
end
