class FlightsController < ApplicationController
  def index
    @airports = Airport.all
    @dates = Flight.all.map do |flight| 
      date = flight.start_time.strftime("%d/%m/%Y")
      [date, flight.start_time]
    end.uniq { |date| date.first }.sort.reverse

    if params[:from_id]
    @airport = Airport.find(params[:from_id])
    end

    p @airport

    # if params[:date]
    #   # @selected_date = params[:date].scan(/\d{4}-\d{2}-\d{2}/)
    #   # p @selected_date
    #   # @search_results = Flight.where(start_time: ("#{selected_date} 00:01:01 UTC".."#{selected_date} 2020-07-03 23:59:59"))
    #   # p @search_results
    # end
  end
end
