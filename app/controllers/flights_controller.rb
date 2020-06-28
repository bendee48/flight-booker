class FlightsController < ApplicationController
  def index
    @airports = Airport.all
    @dates = Flight.all.map do |flight| 
      date = flight.start_time.strftime("%m/%d/%Y")
      [date, date]
    end.uniq
  end
end
